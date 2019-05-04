---
title: "Largest Value Nested Hash"
date: 2019-05-04T11:44:09+01:00
draft: true
---

I came across this question on the [Ruby Reddit][] the other day:

> [How do I select the largest key: value pair in a nested hash?][question]

The problem specifies a hash of data, which I'll include in full in the gist containing my solution. Omitting data we don't care about, and removing repetitions, the hash is structured like this:

{{<highlight ruby>}}
game_hash = {
    home: {
      players: {
        player1: {
          shoe_size: 16,
          rebounds: 12,
          ...
        },
        player2: {
          ...
        },
        ...
      },
      away: {
        players: {
          player1: {
            shoe_size: 18,
            rebounds: 1,
            ...
          },
          ...
        }
      }
    }
  }
}
{{</highlight>}}

The task is to:

> return the number of rebounds associated with the person with the highest shoe size

So, out of all the players, we need to find the one with the highest shoe size,
and then return the value of `rebounds` for that player.

For both `home` and `away`, `players` is a hash where the keys are `player1, player2, ...`

We only care about the lists of player hashes, so we can get our full list of
all players from the values of the players hashes, like this:

{{<highlight ruby>}}
players = game_hash[:home][:players].values +
  game_hash[:home][:away][:players].values
{{</highlight>}}

> Note: I think the fact that the `away` hash is contained *inside*
`game_hash[:home]` is a mistake, but that's the way the hash was structured in
the original question, so that's what I'm working with.

We can find the player with the highest shoe size by sorting all the players into
ascending `shoe_size` order, and taking the last one:

{{<highlight ruby>}}
players
  .sort {|a,b| a[:shoe_size] <=> b[:shoe_size]}
  .last
{{</highlight>}}

The we just return the value of `rebounds` for that player.

Putting it all together, it looks like this:

{{<highlight ruby>}}

def rebounds_for_highest_shoe_size_player(game_hash)
  players = game_hash[:home][:players].values +
    game_hash[:home][:away][:players].values

  bigfoot = players
    .sort {|a,b| a[:shoe_size] <=> b[:shoe_size]}
    .last

  bigfoot[:rebounds]
end

game_hash = {
  # ...lots of data goes here...
}

puts rebounds_for_highest_shoe_size_player(game_hash)

{{</highlight>}}

My solution, including the full data hash, is [here][gist].

[Ruby Reddit]: https://www.reddit.com/r/ruby
[question]: https://www.reddit.com/r/ruby/comments/b1f2t1/how_do_i_select_the_largest_key_value_pair_in_a/
[gist]: https://gist.github.com/digitalronin/4158276be89f8bf9b07e1c0722672969
