---
layout: post
title:  "What's the Big Deal About Programming Paradigms?"
date:   2021-06-08
categories: development paradigms
comments: true
---

# Table of Contents

1.  [What&rsquo;s the Big Deal About Programming Paradigms?](#org963f4ac)
    1.  [What&rsquo;s this article series about?](#org7933a2a)
    2.  [What is a Programming Paradigms?](#orgc49a7e8)
    3.  [Why should I care about Programming Paradigms?](#org57d81bc)
    4.  [Conclusion](#org8aa54a6)


<a id="org963f4ac"></a>

# What&rsquo;s the Big Deal About Programming Paradigms?


<a id="org7933a2a"></a>

## What&rsquo;s this article series about?

As a developer I&rsquo;ve read an awful lot of books on programming,[1] I don&rsquo;t remember the first programming book I ever read but I do remember it being about about Java programming. The other thing that sticks out in my mind about it was that it, like almost every other language specific programming book I&rsquo;ve ever read since then, started by discussing &ldquo;Programming Paradigms&rdquo;.[2] At the time I just kind of skimmed through that part of the book, I wanted to get to the meat of how to make programs and impress my friends.
Nowadays based on a lot of the discussions I see occurring in the programming language holy wars these days it seems like I wasn&rsquo;t the only one who skipped the discussion of programming paradigms, or forgot it as soon as I graduated. It seems a lot of engineers dismiss paradigms as an abstract concept confined to the ivory tower of academia and not relevant to the dirty business of really writing software in the trenches. Throughout my career however as I have sought increase my abilities as a craftsman[3] I have come back to realize the power of understanding programming paradigms and have gained a profound recognition of how useful a tool the various programming paradigms really are in building solutions.
Consequently, as result of my trailblazing through the thick underbrush of programming theory, I have decided to share my own learnings on what I&rsquo;ve discovered and the understanding I have gained to help those that come after me that I may help some other poor soul that desires this same enlightenment.[4]

This series therefore is dedicated to helping developers gain a better understanding of what a programming paradigm is, what the point of the various programming paradigms are, and to help introduce individuals to idea of thinking in different paradigms. In it this series we&rsquo;ll go over the four major programming paradigms Imperative, Functional, Object Oriented, and Declarative.[5] Each article will:

-   Start with a brief introduction to the programming paradigm and the main conceptual constructs when working in a specific paradigm.
-   Work through solving three different example problems in the paradigm under discussion.
-   Follow with a discussion of what situations the paradigm under evaluation excels in and where an alternative approach may be preferred.
-   Conclude by determining if this is the one true programming paradigm that will rule them all?[6]

This first article will discuss some brief high level concepts which will will help guide our discussion in subsequent articles. At this point I would like to include a big disclaimer: **This series is not going to be perfect and totally error free, these posts aren&rsquo;t meant to act as the definitive end all be all discussion on all aspects of programming paradigms.** This series is instead intended to help reflect the understanding I have gained at this point in my journey as an engineer; hopefully it will help some new engineer better grasp concepts that may have eluded them up until now or make someone one of today&rsquo;s luck ten thousand[7]. My hope with this work as with everything I write, is that a year from now when I look back over this article I will think to myself &ldquo;Man I was an idiot back then. how could I have been so ignorant?&rdquo; because if I come back having the same understanding I do know, that means I have not learned anything since then and have remained stagnant.

With that disclaimer out of the way let&rsquo;s get to the meat of this discussion.


<a id="orgc49a7e8"></a>

## What is a Programming Paradigms?

The first and most important question to this series will be defining what a programming paradigm is, as this will set the stage for the rest of our discussion.
From the evidence I have seen in my life up to this point when someone is asked what a programming paradigm there is some vague noncommittal remarks about programming paradigms being something related to languages, usually some vague comments on OOP, and then something about how one paradigm is better than another, or why language X is best because it supports multiple paradigms.[8] In many cases it seems like the discussion of programming paradigms ends up as just a super-set of the programming language holy wars about which language is the best[9].
So what is a programming paradigm and why do so many people struggle to provide a clear and concise definition? Let us start by decomposing the problem into multiple smaller problems that we can solve independently and see if that helps. First let&rsquo;s define the term programming. Programming can broadly be defined as solving a problem by providing a set of instructions to be execute, in our particular case we are providing the instructions to a computing device.[10] The second problem is then to define the word paradigm; this is a more esoteric term that seems to be little more than a buzzword for management to rattle off in order to obfuscate their purposes[11], but the actual definition is &ldquo;a framework containing the basic assumptions, ways of thinking, and methodology that are commonly accepted by members of a scientific community.&rdquo;[12]
Thus if we were to combine these terms an acceptable definition for programming paradigm would be. &ldquo;***The general framework, assumption and ways of thinking one uses to solve a problem when providing instructions for a computing device to execute.***&rdquo; or to restate it in a slightly more natural manner, ***a programming paradigm is the overall thought process one uses to solve a programming problem***.

&ldquo;Big whoop&rdquo; I hear you say, &ldquo;we&rsquo;ve successfully managed to look in a dictionary what&rsquo;s your point?&rdquo; Although this doesn&rsquo;t seem that profound of upon first hearing of the ideas, as one continues to reflect on it the implications become more apparent. What it means is that by changing the approach we take to solve a problem, we establish the fundamental thinking around the problem. This approach, or paradigm, that we subscribe to then proceeds to dictate almost everything else about the problem, it starts by how we define the problem, it determines what  it means to &ldquo;solve&rdquo; the problem, it guides what steps we will take in our approach and how we will handle issues as they arise as well as laying out what constraints we will, consciously or unconsciously, labor under while attempting to write our code, it also provides a unifying vision of how our code will function. In short the programming paradigm we choose to adopt for any given problem will end up dictating what the ultimate destination is for our development efforts and will defines what &ldquo;progress&rdquo; even is.


<a id="org57d81bc"></a>

## Why should I care about Programming Paradigms?

At this point you may be skeptical, &ldquo;I&rsquo;ve gotten along so far in my career without learning all about this high-falutin&rsquo; paradigm nonsense, why should I learn it now?&rdquo; a worthy question by a worthy adversary. The reason it behooves a developer to learn about programming paradigms is that provides us another tool in our mental toolbox to use when it comes time to perform our labor. The work of development is in large part mental and as such the tools that work to broaden our understanding will be of most use int he long run. The fancy new framework you learn today will probably be superseded five years from now by new tech[13], but understanding universal principles will reap benefits for years to come.
That is where learning about programming paradigms fall, they are one of the fundamental principles that underlay any activity taken in software development. At this point you probably don&rsquo;t even realize how much your current thinking and approach to solving various problems is impacted by the paradigm you are using, you may even think that you aren&rsquo;t using a particular programming paradigm you&rsquo;re just doing whatever works, in this case I&rsquo;d ask you, &ldquo;how&rsquo;s the water today?&rdquo;[14]
Once one can understand and identify basic programming paradigms you&rsquo;ll start to to see their impact on our daily work, in the tooling you use, the architectures you design and every other development activity that goes on around you; by so doing you will come to a deeper understanding of how to develop and use software, as you will be able to see otherwise implicit assumptions and recognize techniques that would otherwise have eldued the unaware eye. In short as your understanding of various programming paradigms increase, so will your ability to ability to make informated decisions as you will have a broader understanding of the issues at hand.


<a id="org8aa54a6"></a>

## Conclusion

At the end of this series you will not be an expert in understanding each paradigm, in fact you won&rsquo;t even really be able to use them, the only way to really be able to become a functional programmer, or an imperative programmer, or an OOP programmer is to live and breathe as one, work and toil, and eventually you&rsquo;ll come to a point, probably ten years down the line[15], where it all just clicks and you&rsquo;ll finally be able to understand what it means to develop in an OOP mindset, or you&rsquo;ll see the world from a Functional perspective and then you will truly have mastered the paradigm. I&rsquo;ll be posting the follow up posts shortly. Until next time I&rsquo;ll see you soon and may you find lasting success and joy in all your endeavors.

## Footnotes
1. Some of them I've even finished.
2. Because this was the early 2000s and the book was Java the entirety of the content on programming paradigms basically boiled down to  "Imperative drools, Functional is for nerds and OOP rules!"
3. And get paid more for being a better craftsman.
4. Also I have to produce some output to convince my wife that all that money I blew on books wasn't a total waste.
5. Yes I know technically Wikipedia has a long list of a lot more and different categories, these are the ones I learned first, these are the ones that seem to be most popular in discussion and these are the paradigms I read up on.
6. "The one paradigm to rule them all the one paradigm to find them the one paradigm to bring them all and in the code bind them in the land of coding where the software lies."
7. https://xkcd.com/1053/
8. Actually if you ask a random person they'll probably say it has something to do about computers and programmers, and then tell you to ask a "computer person" if you want a better answer. It helps if you start by only asking programmers.
9. It's ruby by the way.
10. Programming can also be defined as: 1) the art of breaking things that are working perfectly find because they don't have enough features yet. 2) An exercise in seeing how much insanity the human mind can endure before going completely bonkers. 3) Management doesn't know what it means or what it does they just know they are paying engineers too much to do "press buttons".
11. I attribute this lack of clear definition in part to the rise of paradigm as a buzzword that took the MBA world by storm when Stephen Covey published his book the 7 Habits of Highly Effective people and every middle manager tried to start using the word to seem like they were ahead of the curve. The book itself is actually pretty decent, sadly most people just adopted the words and avoided the actual advice. This is the same fate that befell Agile in the late 90's and early 2000's
12. Source: Dictionary.com https://www.dictionary.com/browse/paradigm
13. Or six months from now if it is related to JS, or has anything to do with DevSecFin****Ops.
14. Once two young fish were swimming down a stream an older fish swam by and asked the younger two "How's the water today?" the  younger fish replied "fine". A few minutes later one of the younger fish turned to the other and asked "What is water anyway?". If you don't have at least some understanding of paradigms as a software engineer you are in the same state as a fish who is unaware of what water is.
15. http://www.norvig.com/21-days.html

