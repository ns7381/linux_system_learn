#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
MODULE_LICENSE ("GPL");
static int  __init hello_2_init (void)
{
    int k;
    int j = 11;
    k = 10;
    k ++;
    printk (KERN_INFO "driver init,k = %d,j = %d\n",k,j);
    return 0;
}

static void  __exit hello_2_exit (void)
{
    int m = 13;
    m ++;
    printk (KERN_INFO "driver exit,m = %d\n",m);
}

module_init (hello_2_init);
module_exit (hello_2_exit);
