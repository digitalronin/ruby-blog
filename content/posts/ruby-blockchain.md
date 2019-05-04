---
title: "Learning Ruby for Blockchain Development"
date: 2019-05-04T12:53:50+01:00
draft: true
---
I thought this question on the ruby sub-reddit was interesting:

> I’m planning on learning Ruby, primarily as I wish to become a blockchain
> developer. However, I’ve seen other languages favoured I.e C++, Python, Java,
> Go. Is there a specific reason as to why this is? Is Ruby an uncommon
> language for Blockchain development, and would that make it harder to seek
> employment as a blockchain dev being a Rubyist?

There are some interesting answers, and I thought I'd add my 2c:

**Should you learn ruby to become a blockchain developer?**

> No.

Don't get me wrong. I love Ruby, and some of the answers in the thread linked
to some great resources for using Ruby to learn about and implement blockchain
concepts.

If that's what the OP wanted to do, I'd agree that Ruby was a great language
choice.

But, the OP said;

> I wish to become a blockchain developer

IMO, a blockchain developer is someone who gets paid to write blockchain
software. Often that means writing smart contract code to run on an existing
blockchain. Sometimes it might mean creating a new blockchain.

Either way, I'd argue against learning Ruby.

If you want people to pay you to write software, you need there to be enough
people willing to pay for the kind of software you write. In the
blockchain space, I don't think there are many people willing to pay for
blockchain development in ruby.

For smart contract programming, Ethereum is the dominant platform, and Solidity
is the dominant language. That's where all the attention is focussed in terms
of paying clients, popular projects, good tooling, blog posts, tutorials, etc.

There are other blockchain platforms, but Ethereum/Solidity is head and
shoulders above the rest of the pack. If you're picking a language because you
want to be a developer who writes blockchain smart contracts, it's got to be
Solidity.

The exception to this, IMO, is C++.

Most of the underlying blockchains themselves are written in C++. So, if that's
the kind of blockchain developer the OP wants to become, C++ would be a good
choice. It's also the language in which smart contracts for the EOS blockchain
are written, and given the enormous amount of money the EOS team raised in
their ICO, I wouldn't rule them out as a viable platform.

So, Ruby is awesome, but if you want to be a blockchain developer, I'd
recommend learning Solidity or C++.
