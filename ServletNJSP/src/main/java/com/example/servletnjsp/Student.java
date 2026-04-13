package com.example.servletnjsp;

public class Student {
    int rollno;
    String name;

    public Student(int rollno, String name) {
        super();
        this.rollno = rollno;
        this.name = name;
    }

    //javabeans
    public String getName() {
        return name;
    }

    public int getRollno() {
        return rollno;
    }

    public void setRollno(int rollno) {
        this.rollno = rollno;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Student{" +
                "rollno=" + rollno +
                ", name='" + name + '\'' +
                '}';
    }
}
