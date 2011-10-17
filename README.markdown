# Space Boulders #
## Building a Unity3D using Boo; A Learn-Along Video Series##

Space Boulders is a Learn-Along project for experienced programmers interested in learning the [Boo programming language](http://boo.codehaus.org/) and the [Unity3D game development system](http://unity3d.com/).

I wouldn't dare call these a tutorial since that would imply I know something. Instead I call them Learn-Along; you get to learn right along with me. 

I'll show you my mistakes and show you what I did to correct the ones I discover (there will be ones I don't discover too). Since I'm a neophyte too don't look to these videos as a reference, just as an example of how easy it is to create a game using Unity3D.

## Videos ##

Videos are in production.  
They will be posted on YouTube and linked here when I'm done.  

*Prototype Phase*  
00 Introduction  
01 Building a Ship  
02 Adding Boulders  
03 Create a Weapon  
04 Scoring and Lives  
05 Enemy Ships  
06 Wrap up  
[Source code](https://github.com/mikbe/spaceboulders)  

Planned Videos:  

*From Prototype to Real Game*  
The next series that will take the game from a prototype to a fully fleshed out, playable game.  

*Sharing Your Game*  
Shows you how to host your games online on your own site and on popular game sites.

## Who is this series for? ##

This series is for programmers. If you know at least one language like Java, C, Python, or Ruby and have a basic understanding of object oriented programming you should be fine. There's nothing complicated but I'm not going to waste time explaining what a variable is.  

No previous knowledge of Boo or Unity3D experience is required but you should familiarize yourself with them before hand by looking over the prerequisites below.  

I also won't be explaining a lot about Boo or Unity3D since I'm a novice too and don't want to give you any bad info. I will try to explain the gotchas I ran across but I'll try to avoid making any statements that imply I know what I'm talking about.  

## Prerequisites ##

You'll need to take a look at these free resources if you aren't already familiar with Unity3D or Boo.

#### Unity3D ####
If this is your first time picking up Unity3D watch these excellent videos from [3DBuzz](http://3dbuzz.com) first (they're all free):  
[Unity3D Fundamentals](http://www.3dbuzz.com/vbforum/sv_videonav.php?fid=6b3e0734765f06878b3524aba1e0d949)  
[Unity3D Basic Terminology](http://www.3dbuzz.com/vbforum/sv_videonav.php?fid=ce953c514b33f3dd0a756031abd3df35)  

You should at least watch those two series of videos and if you can watch the rest of the Unity3D Fundamentals series you'll be more than prepared to follow along.  

You should also check out this series of videos as the Space Boulders Learn-Along is strongly influenced by them.  
[Unity3D Simple 2D Shooter](http://www.3dbuzz.com/vbforum/sv_videonav.php?fid=db25cc88fdc47f4afd9562b6abb1332a)  

And here are the original videos 3DBuzz based their videos off of:  
[http://www.unityjumpstart.com/ProofOfConcept_1/](http://www.unityjumpstart.com/ProofOfConcept_1/)  

#### Boo ####
The Boo information is a bit disorganized and there's really no good single language reference but if you take a look at these pages it will give you a basic start:    

[Boo Language Primer](http://boo.codehaus.org/Boo+Primer)  
[Boo Language Guide](http://boo.codehaus.org/Language+Guide)  

## Requirements ##
[Unity3D 3.4.1](http://unity3d.com/unity/download/)  

**WARNING**  
**DO NOT UPGRADE ANY PLUGINS IN MONODEVELOP!**  
If you upgrade the Boo plugin everything will break and you won't be able to use Boo with Unity3D until you completely delete all traces of Unity3D and MonoDevelop and reinstall them. So don't do it. You have been warned.  

## Optional ##
Unity3D has everything you need including the Boo language and MonoDevelop but I found it useful to be able to use the Boo interactive shell booish to test out how the language works.  

[Mono Framework](http://www.go-mono.com/mono-downloads/download.html) - You need this first.  
[Boo Programming Language](http://dist.codehaus.org/boo/distributions/) - Now you can install the language.

I tried MonoDevelop 2.8 but it doesn't have a Boo plugin so I deleted it and just used the MonoDevelop 2.4 that comes with Unity3D even for my non-Unity stuff.  