#ifndef _LISASIM_TDI_H_
#define _LISASIM_TDI_H_

#include "lisasim-lisa.h"
#include "lisasim-wave.h"

class TDI {
    public:
        TDI() {};
	virtual ~TDI() {};

	virtual void reset() {};

        virtual double X(double t);
        virtual double Y(double t);
        virtual double Z(double t);
    
        virtual double alpha(double t);
        virtual double beta(double t);
        virtual double gamma(double t);
    
        virtual double zeta(double t);

	virtual double P(double t);
	virtual double E(double t);
	virtual double U(double t);

	virtual double Xm(double t);

        virtual double y(int send, int link, int recv, int ret1, int ret2, int ret3, double t);
        virtual double z(int send, int link, int recv, int ret1, int ret2, int ret3, int ret4, double t);
};

#endif /* _LISASIM_TDI_H_ */
