#ifndef __SCENE_H__
#define __SCENE_H__

#include <ugdk/action/scene.h>

namespace pizza{

class Pizza : public ugdk::Scene{
  public:
  Pizza():/*666*/eslapped_time_(0.0){}
    void Update(double dt){
      ugdk::Scene::Update(dt);
      eslapped_time_ += dt;
      if (eslapped_time_ >= 5.0){
	Finish();
      }
    }
  private:
    double eslapped_time_;
};

}

#endif //__SCENE_H__
