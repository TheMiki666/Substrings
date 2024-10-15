# Substrings
Ruby basic exercise 2

By now you should feel pretty good working with strings, arrays and hashes. We’ll do a couple of classic “intro to programming” problems in the next few lessons to help solidify your knowledge and get warmed up to working on small projects. You’ll need to rely on some of your basic knowledge of conditionals and flow control from the prep work but you shouldn’t need to do anything you haven’t seen before.

mplement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }

Next, make sure your method can handle multiple words:

  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
  
Please note the order of your keys might be different.

Quick Tips:

Recall how to turn strings into arrays and arrays into strings.
