# Evolutionary multi-objective optimization platform

For running PlatEmo's SMS-EMOA with DBMOPP_generator run `platemo('algorithm',@SMSEMOA,'problem',@DBMOPP);`.

After running `main`, you can use `zeros(size(theta,2),1); for iterations = 1:size(theta,3); HVS(iterations) = PD(objval(N*(iterations-1)+1:N*iterations,:),pf); end;` in command window to test various metrics. `PD` can be replaced with `IGD`, `GD`, `PD`, `HV`, `DeltaP`. (DeltaP is avg Hausdorff)


## Copyright
> The Copyright of the PlatEMO belongs to the BIMK group. You are free to [use the PlatEMO](https://github.com/BIMK/PlatEMO/releases) for **research purposes**. All publications which use this platform or any code in the platform should **acknowledge the use of "PlatEMO" and reference** _"Ye Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB Platform for Evolutionary Multi-Objective Optimization [Educational Forum], IEEE Computational Intelligence Magazine, 2017, 12(4): 73-87"._  

```
@article{PlatEMO,
  title={{PlatEMO}: A {MATLAB} platform for evolutionary multi-objective optimization},
  author={Tian, Ye and Cheng, Ran and Zhang, Xingyi and Jin, Yaochu},
  journal={IEEE Computational Intelligence Magazine},
  volume={12},
  number={4},
  pages={73--87},
  year={2017},
}
```
DBMOPP was taken from the following source:
- https://github.com/fieldsend/DBMOPP_generator
- Jonathan E. Fieldsend, Tinkle Chugh, Richard Allmendinger, and Kaisa Miettinen. 2019. A Feature Rich Distance-Based Many-Objective Visualisable Test Problem Generator. In Genetic and Evolutionary Computation Conference (GECCO ’19), July 13–17, 2019, Prague, Czech Republic. ACM, New York
