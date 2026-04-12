---
marp: true
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.jpg')
color: 266089
html: true

---
![bg left:50% 90%](nuvolaris+openserverless.png)

<center>
<img width="45%"src="trustable-logo.png">
</center>

## Trustable AI Course

## **Lesson 1**

## **Trustable Overview**


---

# Download

## Install Docker Desktop

# Windows (powershell)

## `irm n7s.co/get-trustable | irm`

# Mac/Linux

## `curl -sL n7s.co/get-trustable | bash`


---

## Installation & Access

### Installation command

### `ops trustable setup`

### Access command

### ` ops trustable signin`

![bg right fit](image-16.png)

---

# Signin

- Access the Ollama cloud

- Configure cloud models

![bg right:40%](image-0.png)

![alt text](image-3.png)

---

![bg right](image-1.png)

# App Index

- Main Menu show lis of appis

- You can Configure and Add Apps

- You can Edit, set the Env, Push to Git and Publish the apps

---

## Global Configuration

- List and add models

- Choose your default coding and "small" model
  - small for titles, names

- Define your github identity

![bg fit right](image-4.png)

---

# Add App

- Use the Starter

- Application Name and Password

- GitHub repo (add the key)

<img width=400 src="image-6.png">

![bg fit right](image-5.png)



---
## About Env vars

- Each app has **development** and **production** values

- `OPS_USER`, `OPS_PASSWORD` and `OPS_APIHOST` are fixed, you can define the values for publishing

- `OPS_REPO` is the repo where you save

- Other variables define the AI access

- You can (and must) add your own variables

---

![bg 80%](image-8.png)

---

## First Prompt

> **change the home page in a todo list**

Once completed :

![bg right:50%](image-9.png)

![alt text](image-10.png)


---

## Routes

> **Add on the route `/pomodoro` a Pomodoro Timer**

![width:200](image-18.png)

![width:300](image-20.png)

![bg right fit](image-19.png)

---

# Memory

![alt text](image-2a.png)

- execute `/init`

![bg fit right](image-15.png)

---

# Skills

![alt text](image-2.png)

- set of informations

- updatable

- customizable

![bg fit right](image-14.png)


---


![bg 70%](image-7.png)

---

### Publish and Git Push

<img width=300 src="image-12.png">

![bg fit right](image-11.png)

![alt text](image-13.png)

---

![bg fit](image-30.png)

---


# "List available tools"

![](image-21.png)

---

# Create an IP Address API

> **add an api returning my ip address using ifconfig.me**

![alt text](image-22.png)

- Redeploy shows the actions
- Terminal allows invoke

![](image-23.png)

![bg right fit](image-24.png)

---

# UI showing IP


> **replace the card in the home page showing my current ip address**

![bg fit right](image-25.png)


---

# Use secrets

- Configure some GitHub the secrets in the UI, then:

> **use the secret GH_TOKEN and the repo GH_REPO and create an api endpoint creating an issue in github with parameters title and body**

![bg right fit](image-27.png)


---
# UI for the Issues

> **replace the home page with an user interface asking title and body and creating a github issue**

![alt text](image-29.png)

![bg right fit](image-28.png)