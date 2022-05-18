package com.javabykiran.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation   .RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javabykiran.entity.Answer;
import com.javabykiran.entity.Questions;
import com.javabykiran.entity.Score;

@Controller

public class QuestionController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("getQuestions")
	
	public ModelAndView getQuestions(String subject, HttpServletRequest request)

	{
		System.out.println(subject);

		Session session = factory.openSession();
		Query query = session.createQuery("from Questions where subject=:subject");
		query.setParameter("subject", subject);

		List<Questions> listofQuestion = query.list();

		System.out.println(listofQuestion);

		HttpSession httpSession = request.getSession();

		httpSession.setAttribute("listOfQuestions", listofQuestion);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("questions");

		return modelAndView;
	}

	@RequestMapping("startExam")

	public ModelAndView startExam(String selectedSubject, HttpServletRequest request) {
		if (!selectedSubject.equals("actionNoRequired"))
		{
		HttpSession httpSession = request.getSession();
		List<Questions> listofQuestion = (List<Questions>) httpSession.getAttribute("listOfQuestions");

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("questionnevigator");

		modelAndView.addObject("question", listofQuestion.get(0));
		
		httpSession.setAttribute("score", 0);
		httpSession.setAttribute("qno", 0);
		httpSession.setAttribute("timeremaining",3);
		
		httpSession.setAttribute("submittedDetails", new HashMap<Integer, Answer>());
		httpSession.setAttribute("subject",selectedSubject);
		return modelAndView;

	}else
	{

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("questions");
		modelAndView.addObject("msg", "please Select Your Subject");	
		return modelAndView;
	}
		
		
	}

	@RequestMapping("storeResponse")

	public void storeResponse(Answer answer,HttpServletRequest request) {
		//System.out.println("Before list"+answer);

		HttpSession httpSession = request.getSession();

		List<Questions> listofQuestions = (List<Questions>) httpSession.getAttribute("listOfQuestions");
		
		String correctAnswer = listofQuestions.get(answer.getQno() - 1).getAnswer();
		
		answer.setCorrectAnswer(correctAnswer);
		
		//System.out.println("After list"+answer);
		// retrieve hash map object from session
		HashMap<Integer,Answer>hashmapobject = (HashMap<Integer,Answer>) httpSession.getAttribute("submittedDetails");
		//update retrieved hash map object
		hashmapobject.put(answer.getQno(), answer);
		//add updated hash map  object to session using setAttribute
		httpSession.setAttribute("submittedDetails", hashmapobject);

		System.out.println(hashmapobject);
		
	
	}

	@RequestMapping("Next")

	public ModelAndView Next(HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		List<Questions> listofQuestions = (List<Questions>) httpSession.getAttribute("listOfQuestions");


		httpSession.setAttribute("qno", (Integer) httpSession.getAttribute("qno") + 1);
		ModelAndView modelAndView = new ModelAndView();
		if ((Integer) httpSession.getAttribute("qno") < listofQuestions.size()) {
			Questions question = listofQuestions.get((Integer) httpSession.getAttribute("qno"));
			modelAndView.setViewName("questionnevigator");
			modelAndView.addObject("question", question);
		} else {
			modelAndView.setViewName("questionnevigator");
			modelAndView.addObject("end", "Questions over");
		}

		return modelAndView;
	}

	@RequestMapping("Previous")

 	public ModelAndView Previous(HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		List<Questions> listofQuestions = (List<Questions>) httpSession.getAttribute("listOfQuestions");

		httpSession.setAttribute("qno", (Integer) httpSession.getAttribute("qno") - 1);
		ModelAndView modelAndView = new ModelAndView();
		if ((Integer) httpSession.getAttribute("qno")>-1) {
			Questions question = listofQuestions.get((Integer) httpSession.getAttribute("qno"));

			modelAndView.setViewName("questionnevigator");

			modelAndView.addObject("question", question);

		} else {
			modelAndView.setViewName("questionnevigator");
			modelAndView.addObject("end", "click on next");
		}

		return modelAndView;
	}

	@RequestMapping("EndExam")

	public ModelAndView EndExam(HttpServletRequest request)
	{
		HttpSession httpSession = request.getSession();
		HashMap<Integer,Answer>hashmapobject = (HashMap<Integer,Answer>) httpSession.getAttribute("submittedDetails");
		
		System.out.println(hashmapobject);
		ModelAndView modelAndView =null;
		
		if (hashmapobject!=null) {
			
		Collection<Answer> answers= hashmapobject.values();
		for(Answer answer:answers) {
			if(answer.submittedAnswer.equals(answer.correctAnswer))
			{
				httpSession.setAttribute("score",(Integer) httpSession.getAttribute("score")+1);
				
			}
		}
		
		Session hibernateSession=factory.openSession();
		Transaction tx= hibernateSession.beginTransaction();
		
		Score score  =new Score();
		score.setUsername((String)httpSession.getAttribute("username"));
		score.setSubject((String)httpSession.getAttribute("subject"));
		score.setMarks((Integer)httpSession.getAttribute("score"));
		hibernateSession.save(score);
			
		
		tx.commit();
		
		String name=(String)httpSession.getAttribute("username");
		modelAndView = new ModelAndView();

		modelAndView.setViewName("score");
		modelAndView.addObject("score", httpSession.getAttribute("score"));
		modelAndView.addObject("submittedDetails", httpSession.getAttribute("submittedDetails"));
		if(name!=null)
		{
			modelAndView.addObject("username",name);
			
		}else
		{
			
			
		}
		
		
		
		httpSession.invalidate(); 
		}
		else {
			modelAndView = new ModelAndView();

			modelAndView.setViewName("endpage");
		}
		return modelAndView;
		
		
}
	@RequestMapping("questions")

	public String selectSubject()
	{
		return"questions";
	}

	@RequestMapping("score")

	String score(HttpServletRequest request)
	{
		HttpSession httpSession = request.getSession();
		HashMap<Integer,Answer>hashmapobject = (HashMap<Integer,Answer>) httpSession.getAttribute("submittedDetails");
		
		System.out.println(hashmapobject);
		ModelAndView modelAndView =null;
		
		if (hashmapobject!=null) {
			
		Collection<Answer> answers= hashmapobject.values();
		for(Answer answer:answers) {
			if(answer.submittedAnswer.equals(answer.correctAnswer))
			{
				httpSession.setAttribute("score",(Integer) httpSession.getAttribute("score")+1);
				
			}
		}
		
		Session hibernateSession=factory.openSession();
		Transaction tx= hibernateSession.beginTransaction();
		
		Score score  =new Score();
		score.setUsername((String)httpSession.getAttribute("username"));
		score.setSubject((String)httpSession.getAttribute("subject"));
		score.setMarks((Integer)httpSession.getAttribute("score"));
		hibernateSession.save(score);
			
		
		tx.commit();
		
		                               
		request.setAttribute("score", httpSession.getAttribute("score"));
		request.setAttribute("submittedDetails", httpSession.getAttribute("submittedDetails"));
		
		
		
		httpSession.invalidate();  
		
		}
		return"score";
}
	
}
