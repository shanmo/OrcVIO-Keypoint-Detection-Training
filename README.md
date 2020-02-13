## readme

This repo contains the code for training starmap with dropout

### modification to add dropout layer

The following code is changed to add dropout layers

```
"""no dropout"""
# lin = nn.Sequential(nn.Conv2d(self.nFeats, self.nFeats, bias = True, kernel_size = 1, stride = 1),
#                     nn.BatchNorm2d(self.nFeats), self.relu)

"""add dropout"""
lin = nn.Sequential(nn.Conv2d(self.nFeats, self.nFeats, bias = True, kernel_size = 1, stride = 1),
                    nn.BatchNorm2d(self.nFeats), self.relu, nn.Dropout(0.5))
```
