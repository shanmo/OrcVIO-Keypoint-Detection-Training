## readme

This repo is used in [OrcVIO: Object residual constrained Visual-Inertial Odometry](http://me-llamo-sean.cf/orcvio_githubpage/), the related papers are: 

- [IROS 2020](https://arxiv.org/abs/2007.15107)
- [Journal version TBD]()

If you find this repo useful, kindly cite our publications 

```
@inproceedings{orcvio,
	  title = {OrcVIO: Object residual constrained Visual-Inertial Odometry},
          author={M. {Shan} and Q. {Feng} and N. {Atanasov}},
          year = {2020},
          booktitle={IEEE Intl. Conf. on Intelligent Robots and Systems (IROS).},
          url = {http://erl.ucsd.edu/pages/orcvio.html},
          pdf = {https://arxiv.org/abs/2007.15107}
}
```

## about

This repo contains the code for training starmap with dropout, used in OrcVIO.

### modification to add dropout layer

The following code in `lib/models/hg.py` is changed to add dropout layers

```
"""no dropout"""
# lin = nn.Sequential(nn.Conv2d(self.nFeats, self.nFeats, bias = True, kernel_size = 1, stride = 1),
#                     nn.BatchNorm2d(self.nFeats), self.relu)

"""add dropout"""
lin = nn.Sequential(nn.Conv2d(self.nFeats, self.nFeats, bias = True, kernel_size = 1, stride = 1),
                    nn.BatchNorm2d(self.nFeats), self.relu, nn.Dropout(0.5))
```

### reference 

- https://github.com/xingyizhou/StarMap
