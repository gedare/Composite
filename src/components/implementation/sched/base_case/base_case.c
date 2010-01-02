#include <cos_component.h>
#include <cos_scheduler.h>
#define COS_FMT_PRINT
#include <print.h>
#include <errno.h>

int sched_child_get_evt(spdid_t spdid, struct sched_child_evt *e, int idle)
{
	assert(0);
	return 0;
}

int sched_child_cntl_thd(spdid_t spdid)
{
	assert(0);
	return 0;
}

int sched_child_thd_crt(spdid_t spdid, spdid_t dest_spd)
{
	assert(0);
	return 0;
}


void sched_root_init(void) { assert(0); return; }

int sched_wakeup(spdid_t spdid, unsigned short int thd_id)
{
	assert(0);
	return -ENOTSUP;
}

int sched_block(spdid_t spdid, unsigned short int dependency_thd)
{
	assert(0);
	return -ENOTSUP;
}

void sched_timeout(spdid_t spdid, unsigned long amnt) { assert(0); return; }


int sched_timeout_thd(spdid_t spdid)
{
	assert(0);
	return -ENOTSUP;
}

unsigned int sched_tick_freq(void)
{
	assert(0);
	return 0;
}

unsigned long sched_timestamp(void)
{
	assert(0);
	return 0;
}


int sched_create_thread(spdid_t spdid, struct cos_array *data){
	assert(0);
	return -ENOTSUP;
}

int sched_create_net_brand(spdid_t spdid, unsigned short int port)
{
	assert(0);
	return -ENOTSUP;
}

int sched_add_thd_to_brand(spdid_t spdid, unsigned short int bid, unsigned short int tid)
{
	assert(0);
	return -ENOTSUP;
}

void sched_exit(void) { assert(0); return; }


int sched_component_take(spdid_t spdid) 
{ 
	assert(0); 
	return -ENOTSUP;
}

int sched_component_release(spdid_t spdid)
{
	assert(0);
	return -ENOTSUP;
}

