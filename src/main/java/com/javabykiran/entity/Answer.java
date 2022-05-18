package com.javabykiran.entity;

public class Answer {
	
	int qno;
	String question;
	public String submittedAnswer;
	public String correctAnswer;
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getSubmittedAnswer() {
		return submittedAnswer;
	}
	public void setSubmittedAnswer(String submittedAnswer) {
		this.submittedAnswer = submittedAnswer;
	}
	public String getCorrectAnswer() {
		return correctAnswer;
	}
	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Answer(int qno, String question, String submittedAnswer, String correctAnswer) {
		super();
		this.qno = qno;
		this.question = question;
		this.submittedAnswer = submittedAnswer;
		this.correctAnswer = correctAnswer;
	}
	@Override
	public String toString() {
		return "Answer [qno=" + qno + ", question=" + question + ", submittedAnswer=" + submittedAnswer
				+ ", correctAnswer=" + correctAnswer + "]";
	}
	
	
	

}
