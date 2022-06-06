/* DO NOT EDIT THIS FILE - it is machine generated */
#include <native.h>
/* Header for class java_lang_Thread */

#ifndef _Included_java_lang_Thread
#define _Included_java_lang_Thread
struct Hjava_lang_Thread;
struct Hjava_lang_Runnable;
struct Hjava_lang_ThreadGroup;
struct Hjava_lang_ClassLoader;
struct Hjava_security_AccessControlContext;
struct Hjava_lang_ThreadLocal_ThreadLocalMap;

typedef struct Classjava_lang_Thread {
    struct HArrayOfChar *name;
    int32_t priority;
    struct Hjava_lang_Thread *threadQ;
    int64_t eetop;
    /*boolean*/ int32_t single_step;
    /*boolean*/ int32_t daemon;
    /*boolean*/ int32_t stillborn;
    struct Hjava_lang_Runnable *target;
    struct Hjava_lang_ThreadGroup *group;
    struct Hjava_lang_ClassLoader *contextClassLoader;
    struct Hjava_security_AccessControlContext *inheritedAccessControlContext;
/* Inaccessible static: threadInitNumber */
/* Inaccessible static: stopThreadPermission */
    struct Hjava_lang_ThreadLocal_ThreadLocalMap *threadLocals;
    struct Hjava_lang_ThreadLocal_ThreadLocalMap *inheritableThreadLocals;
#undef java_lang_Thread_MIN_PRIORITY
#define java_lang_Thread_MIN_PRIORITY 1L
#undef java_lang_Thread_NORM_PRIORITY
#define java_lang_Thread_NORM_PRIORITY 5L
#undef java_lang_Thread_MAX_PRIORITY
#define java_lang_Thread_MAX_PRIORITY 10L
} Classjava_lang_Thread;
HandleTo(java_lang_Thread);

#ifdef __cplusplus
extern "C" {
#endif
extern void java_lang_Thread_registerNatives(struct Hjava_lang_Thread *);
extern struct Hjava_lang_Thread *java_lang_Thread_currentThread(struct Hjava_lang_Thread *);
extern void java_lang_Thread_yield(struct Hjava_lang_Thread *);
extern void java_lang_Thread_sleep(struct Hjava_lang_Thread *,int64_t);
extern void java_lang_Thread_start(struct Hjava_lang_Thread *);
extern /*boolean*/ int32_t java_lang_Thread_isInterrupted(struct Hjava_lang_Thread *,/*boolean*/ int32_t);
extern /*boolean*/ int32_t java_lang_Thread_isAlive(struct Hjava_lang_Thread *);
extern int32_t java_lang_Thread_countStackFrames(struct Hjava_lang_Thread *);
extern void java_lang_Thread_setPriority0(struct Hjava_lang_Thread *,int32_t);
struct Hjava_lang_Object;
extern void java_lang_Thread_stop0(struct Hjava_lang_Thread *,struct Hjava_lang_Object *);
extern void java_lang_Thread_suspend0(struct Hjava_lang_Thread *);
extern void java_lang_Thread_resume0(struct Hjava_lang_Thread *);
extern void java_lang_Thread_interrupt0(struct Hjava_lang_Thread *);
#ifdef __cplusplus
}
#endif
#endif