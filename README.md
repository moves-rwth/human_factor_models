# human_factor_models

Contains several files accompanying our [technical report](https://arxiv.org/abs/1610.09409) on probabilistic verification for human-robot-interaction.

To execute the MDP files (containing only behaviour extracted from the RL model for human behaviour), 
use either [prism](http://www.prismmodelchecker.org) or [storm](http://www.stormchecker.org).

For the SG files (containing a robot in addition to the human behaviour), 
use [prism games](http://www.prismmodelchecker.org/games/). 
Running SGs with the symbolic engine is only possible via a [special version](https://github.com/davexparker/prism-games/tree/symbolic).

The file examples.sh contains a couple of examplatory calls.
