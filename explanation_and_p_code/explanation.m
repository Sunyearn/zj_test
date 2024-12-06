%% English explanation
% <paper> p-code for the submitted paper "Perspective Back-Projection Algorithm: Imaging Interfaces for Airborne Ground-Penetrating Radar Ice Detection"
% for each pair of the transmitter and receiver, the transmitter and receiver are co-located.
% <function> judge_geometry_refraction_2D_example: for a specific pair of 'a transmitter and a node below the air-ice interface', this function is for determining the possible accurate refraction node on the air-ice interface for Perspective Back-Projection (PBP) computation.
% <function> judge_intersection: judge if 'the lines connecting determined refraction node and transmitter' and 'the lines connecting determined refraction node and node belwo the air-ice interface' intersect with the air-ice interface

% temp_node_below_coor_parfor:  (x,z), which is a 1 by 2 vector, the coordinates of a node below the air-ice interface
% temp_transmitter_coor_parfor: (x,z), which is a 1 by 2 vector, the coordinates of a transmitter below the air-ice interface
% Terrain_node_coor: (x,z), which is a N by 2 matrix, representing the coordinates of discretized nodes on the air-ice interface
% Terrain_node_normal_vec: (x,z), which is a N by 2 matrix, representing normal vector corresponding to the nodes on the air-ice interface
% terrain_index: a N by 1 vector, representing the indices of the discretized nodes on the air-ice interface. generally 'terrain_index' is '[1;2;3;4;...;N]'
% index：a m by 1 vector, there are m indices that were picked out from terrain_index. indices corresponding to the possible accurate refraction nodes on the air-ice interface
% judgement_intersection: a m by 1 vector. In this vector, 1 representing invalid refraction node, 0 representing valid refraction node

% Threshold: the threshold to determine the node coordinates for refraction, it can be set to 10^-4 or 10^-5, and so on.

% sin_ratio:sqrt(epsilonR_air * muR_air)/sin(epsilonR_ice * muR_ice),
% epsilonR_air is the relative permittivity of air
% muR_air is the relative permeability of air
% epsilonR_ice is the relative permittivity of ice
% muR_ice is the relative permeability of ice
%% Chinese explanation
% <文章> 来自文章 "Perspective Back-Projection Algorithm: Imaging Interfaces for Airborne Ground-Penetrating Radar Ice Detection"
% 对于每一对儿发射和接收单元，发射和接收单元被放置在同一坐标位置
% <函数> judge_geometry_refraction_2D_example：对于任意由'1个发射点'和'air-ice界面下1个节点'组成的求解的折射点的问题，该函数可以得到air-ice界面上可能的折射点位。
% <函数> judge_intersection: 判断'由函数judge_geometry_refraction_2D_example初步确定的折射点与发射点、air-ice界面下节点的连线'是否和'air-ice界面'多次相交

% temp_node_below_coor_parfor:  (x,z), 一个 1 × 2 的向量, 存储air-ice界面下1个节点的坐标
% temp_transmitter_coor_parfor: (x,z), 一个 1 × 2 的向量, 存储1个发射点的坐标
% Terrain_node_coor: (x,z), 一个 N × 2 矩阵, 存储air-ice界面上全部离散节点的坐标
% Terrain_node_normal_vec: (x,z), 一个 N × 2 矩阵, 存储air-ice界面上全部离散节点位置的法向量
% terrain_index: 一个 N × 1 vector, 存储air-ice界面上全部离散节点的索引，通常是[1;2;3;4;...;N]
% index：一个 m × 1 向量, 由函数judge_geometry_refraction_2D_example
% judgement_intersection: 一个 m × 1 向量. 向量中，1代表无效折射点位（与air-ice界面多次相交），0代表有效点位（与air-ice界面只有一次相交）

% Threshold: 用于judge_geometry_refraction_2D_example函数计算的阈值，可设为 10^-4 or 10^-5等.

% sin_ratio:折射率 sqrt(epsilonR_air * muR_air)/sin(epsilonR_ice * muR_ice),
% epsilonR_air 是空气的相对介电常数
% muR_air 是空气的相对磁导率
% epsilonR_ice 是冰的相对介电常数
% muR_ice 是冰的相对磁导率

%%
index = judge_geometry_refraction_2D_example(temp_node_below_coor_parfor,...
    temp_transmitter_coor_parfor,terrain_index,...
    Terrain_node_coor,...
    Terrain_node_normal_vec,Threshold,sin_ratio);


judgement_intersection = judge_intersection(temp_node_below_coor_parfor,...
    temp_transmitter_coor_parfor,...
    Terrain_node_coor,...
    index);


%%
% if there is any question about the paper, you can contact me: wangyg1991@foxmail.com
% 如果您有任何的疑问，可以联系我：wangyg1991@foxmail.com


