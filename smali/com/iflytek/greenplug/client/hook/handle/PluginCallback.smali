.class public Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;
.super Ljava/lang/Object;
.source "PluginCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field private static final TAG:Ljava/lang/String; = "PluginCallback"

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private mEnable:Z

.field private mHostContext:Landroid/content/Context;

.field private mOldHandle:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "oldHandle"    # Landroid/os/Handler;
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    .line 191
    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mEnable:Z

    .line 197
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    .line 198
    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    .line 199
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    .line 200
    return-void
.end method

.method private preHandleBindService(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 554
    :try_start_0
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleBindService begin"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    .local v2, "obj":Ljava/lang/Object;
    const-string/jumbo v7, "intent"

    invoke-static {v2, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 560
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 561
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleBindService, intent is null"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleBindService end"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v5, :cond_4

    .line 599
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v5, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    .line 601
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    return v5

    .line 564
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 565
    const-string/jumbo v7, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 568
    .local v4, "targetIntent":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 569
    const-string/jumbo v7, "PluginCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preHandleBindService, targetIntent is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 573
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleBindService\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 593
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v4    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleBindService error"

    invoke-static {v6, v7, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v4    # "targetIntent":Landroid/content/Intent;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 580
    .local v3, "targetComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_2

    .line 582
    const-string/jumbo v6, "PluginCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preHandleBindService, plugin package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not exist, so return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    :cond_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v8, "intent"

    invoke-static {v7, v8, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 588
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :cond_3
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleBindService, targetIntent is null"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v4    # "targetIntent":Landroid/content/Intent;
    :cond_4
    move v5, v6

    .line 601
    goto/16 :goto_1
.end method

.method private preHandleCreateService(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 439
    :try_start_0
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleCreateService begin"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 442
    .local v1, "obj":Ljava/lang/Object;
    const-string/jumbo v7, "info"

    invoke-static {v1, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 444
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string/jumbo v7, "PluginCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preHandleCreateService,serviceInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string/jumbo v8, "com.iflytek.greenplug.client.stub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 448
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 450
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleCreateService\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 494
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return v5

    .line 456
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/iflytek/greenplug/client/PluginManager;->getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    .line 457
    .local v3, "targetComponent":Landroid/content/ComponentName;
    const-string/jumbo v7, "PluginCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preHandleCreateService, targetComponent is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    if-nez v3, :cond_1

    .line 461
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "targetComponent is not exist, so return"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleCreateService error"

    invoke-static {v6, v7, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "targetComponent":Landroid/content/ComponentName;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_2

    .line 467
    const-string/jumbo v6, "PluginCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preHandleCreateService, plugin package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not exist, so return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_2
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Lcom/iflytek/greenplug/client/PluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 472
    .local v4, "targetServiceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v4, :cond_3

    .line 473
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleCreateService, targetServiceInfo is null, so return"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_3
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->makePluginApplication(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)V

    .line 480
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v8, "info"

    invoke-static {v7, v8, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    .end local v4    # "targetServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleCreateService end"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v5, :cond_5

    .line 492
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v5, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    goto/16 :goto_0

    :cond_5
    move v5, v6

    .line 494
    goto/16 :goto_0
.end method

.method private preHandleDestroyActivity(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 406
    :try_start_0
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleDestroyActivity begin"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v2

    .line 409
    .local v2, "activityThread":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 410
    const-string/jumbo v8, "mActivities"

    invoke-static {v2, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 411
    .local v4, "mActivities":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 412
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 413
    .local v1, "activityClientRecord":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 414
    const-string/jumbo v8, "activity"

    invoke-static {v1, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 415
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "pluginActivityClassName":Ljava/lang/String;
    const-string/jumbo v8, "PluginCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DestroyActivity:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/greenplug/client/PluginManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 419
    .local v6, "pluginActivityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/iflytek/greenplug/client/PluginManager;->unBindStubActivity(Landroid/content/pm/ActivityInfo;)V

    .line 424
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "activityClientRecord":Ljava/lang/Object;
    .end local v4    # "mActivities":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Ljava/lang/Object;>;"
    .end local v5    # "pluginActivityClassName":Ljava/lang/String;
    .end local v6    # "pluginActivityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleDestroyActivity end"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v8, :cond_1

    .line 431
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v7, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v7

    .line 433
    .end local v2    # "activityThread":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v7

    .line 425
    :catch_0
    move-exception v3

    .line 426
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleDestroyActivity error"

    invoke-static {v7, v8, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private preHandleLaunchActivity(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 254
    :try_start_0
    const-string/jumbo v9, "PluginCallback"

    const-string/jumbo v10, "preHandleLaunchActivity begin"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    .local v2, "obj":Ljava/lang/Object;
    const-string/jumbo v9, "intent"

    invoke-static {v2, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 260
    const-string/jumbo v9, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 262
    .local v6, "targetIntent":Landroid/content/Intent;
    if-eqz v6, :cond_3

    .line 263
    const-string/jumbo v9, "PluginCallback"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "preHandleLaunchActivity, targetIntent is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v9

    if-nez v9, :cond_0

    .line 267
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleLaunchActivity\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    :goto_0
    return v7

    .line 273
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 274
    .local v5, "targetComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_1

    .line 276
    const-string/jumbo v8, "PluginCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "preHandleLaunchActivity, plugin package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not exist, so return"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v5    # "targetComponent":Landroid/content/ComponentName;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleLaunchActivity error"

    invoke-static {v8, v9, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v5    # "targetComponent":Landroid/content/ComponentName;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/iflytek/greenplug/client/PluginManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 281
    .local v4, "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_2

    .line 282
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleLaunchActivity, targetActivityInfo is null, so return"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->makePluginApplication(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)V

    .line 289
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 292
    .local v3, "pluginClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v6, v3}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->setIntentClassLoader(Landroid/content/Intent;Ljava/lang/ClassLoader;)V

    .line 294
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v10, "intent"

    invoke-static {v9, v10, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v10, "activityInfo"

    invoke-static {v9, v10, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    .end local v3    # "pluginClassLoader":Ljava/lang/ClassLoader;
    .end local v4    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "targetComponent":Landroid/content/ComponentName;
    :goto_1
    const-string/jumbo v9, "PluginCallback"

    const-string/jumbo v10, "preHandleLaunchActivity end"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v7, :cond_4

    .line 307
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v7, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v7

    goto/16 :goto_0

    .line 297
    :cond_3
    :try_start_2
    const-string/jumbo v9, "PluginCallback"

    const-string/jumbo v10, "preHandleLaunchActivity, targetIntent is null"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    move v7, v8

    .line 309
    goto/16 :goto_0
.end method

.method private preHandleNewIntent(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    :try_start_0
    const-string/jumbo v10, "PluginCallback"

    const-string/jumbo v11, "preHandleNewIntent begin"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    .local v5, "obj":Ljava/lang/Object;
    const-string/jumbo v10, "intents"

    invoke-static {v5, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 319
    .local v4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 320
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 321
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 323
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 324
    const-string/jumbo v10, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 326
    .local v9, "targetIntent":Landroid/content/Intent;
    if-eqz v9, :cond_4

    .line 327
    const-string/jumbo v10, "PluginCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preHandleNewIntent, targetIntent is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v10

    if-nez v10, :cond_0

    .line 331
    const-string/jumbo v10, "PluginCallback"

    const-string/jumbo v11, "preHandleNewIntent\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x32

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    const/4 v10, 0x1

    .line 367
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v9    # "targetIntent":Landroid/content/Intent;
    :goto_1
    return v10

    .line 337
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v9    # "targetIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 338
    .local v8, "targetComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-nez v10, :cond_1

    .line 340
    const-string/jumbo v10, "PluginCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preHandleNewIntent, plugin package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not exist, so return"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v10, 0x1

    goto :goto_1

    .line 344
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-lt v10, v11, :cond_3

    .line 345
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "referrer":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 347
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 349
    :cond_2
    invoke-static {v9, v7}, Lcom/iflytek/greenplug/common/utils/compat/ReferrerIntentCompat;->newInstance(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 350
    .local v6, "referTargetIntent":Landroid/content/Intent;
    invoke-interface {v4, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v6    # "referTargetIntent":Landroid/content/Intent;
    .end local v7    # "referrer":Ljava/lang/String;
    .end local v8    # "targetComponent":Landroid/content/ComponentName;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 352
    .restart local v8    # "targetComponent":Landroid/content/ComponentName;
    :cond_3
    invoke-interface {v4, v2, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 359
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v8    # "targetComponent":Landroid/content/ComponentName;
    .end local v9    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PluginCallback"

    const-string/jumbo v11, "preHandleNewIntent error"

    invoke-static {v10, v11, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    const/4 v10, 0x1

    goto :goto_1

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v9    # "targetIntent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "PluginCallback"

    const-string/jumbo v11, "preHandleNewIntent, targetIntent is null"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 358
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "targetIntent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v10, "PluginCallback"

    const-string/jumbo v11, "preHandleNewIntent end"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v10, :cond_6

    .line 365
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v10, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v10

    goto/16 :goto_1

    .line 367
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method private preHandleReceiver(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 694
    :try_start_0
    const-string/jumbo v9, "PluginCallback"

    const-string/jumbo v10, "preHandleReceiver begin"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    .local v2, "obj":Ljava/lang/Object;
    const-string/jumbo v9, "intent"

    invoke-static {v2, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 701
    .local v1, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 702
    const-string/jumbo v9, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 704
    .local v6, "targetIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    .line 705
    const-string/jumbo v9, "PluginCallback"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "preHandleReceiver, targetIntent is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 709
    const-string/jumbo v9, "mExtras"

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    :cond_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 714
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleReceiver\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 755
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    :goto_0
    return v7

    .line 720
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 721
    .local v4, "targetComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_2

    .line 723
    const-string/jumbo v8, "PluginCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "preHandleReceiver, plugin package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not exist, so return"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v4    # "targetComponent":Landroid/content/ComponentName;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleReceiver error"

    invoke-static {v8, v9, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 727
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v4    # "targetComponent":Landroid/content/ComponentName;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/iflytek/greenplug/client/PluginManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 728
    .local v5, "targetInfo":Landroid/content/pm/ActivityInfo;
    if-nez v5, :cond_3

    .line 729
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleReceiver, targetInfo is null, so return"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_3
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->makePluginApplication(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)V

    .line 736
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 738
    .local v3, "pluginClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v6, v3}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->setIntentClassLoader(Landroid/content/Intent;Ljava/lang/ClassLoader;)V

    .line 740
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v10, "intent"

    invoke-static {v9, v10, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v10, "info"

    invoke-static {v9, v10, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    .end local v3    # "pluginClassLoader":Ljava/lang/ClassLoader;
    .end local v4    # "targetComponent":Landroid/content/ComponentName;
    .end local v5    # "targetInfo":Landroid/content/pm/ActivityInfo;
    :goto_1
    const-string/jumbo v9, "PluginCallback"

    const-string/jumbo v10, "preHandleReceiver end"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 752
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v7, :cond_5

    .line 753
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v7, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v7

    goto/16 :goto_0

    .line 743
    :cond_4
    :try_start_2
    const-string/jumbo v9, "PluginCallback"

    const-string/jumbo v10, "preHandleReceiver, targetIntent is null"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_5
    move v7, v8

    .line 755
    goto/16 :goto_0
.end method

.method private preHandleServiceArgs(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 500
    :try_start_0
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleServiceArgs begin"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    .local v2, "obj":Ljava/lang/Object;
    const-string/jumbo v7, "args"

    invoke-static {v2, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 506
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 507
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleServiceArgs, intent is null, so return"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return v5

    .line 511
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string/jumbo v7, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 515
    .local v4, "targetIntent":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 516
    const-string/jumbo v7, "PluginCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preHandleServiceArgs, targetIntent is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 520
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleServiceArgs\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v4    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleServiceArgs error"

    invoke-static {v6, v7, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v4    # "targetIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 527
    .local v3, "targetComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_2

    .line 529
    const-string/jumbo v6, "PluginCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preHandleServiceArgs\uff0cplugin package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not exist, so return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v8, "args"

    invoke-static {v7, v8, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_1
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleServiceArgs end"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v5, :cond_4

    .line 546
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v5, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    goto/16 :goto_0

    .line 535
    :cond_3
    :try_start_2
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleServiceArgs, targetIntent is null, it may be a normal service"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    move v5, v6

    .line 548
    goto/16 :goto_0
.end method

.method private preHandleStopActivity(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 373
    :try_start_0
    const-string/jumbo v5, "PluginCallback"

    const-string/jumbo v6, "preHandleStopActivity begin"

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v1

    .line 376
    .local v1, "activityThread":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 377
    const-string/jumbo v5, "mActivities"

    invoke-static {v1, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 378
    .local v3, "mActivities":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 379
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_0

    .line 380
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, "activityClientRecord":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 383
    const-string/jumbo v5, "PluginCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "preHandleStopActivity end, activityClientRecord is null for token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .end local v0    # "activityClientRecord":Ljava/lang/Object;
    .end local v1    # "activityThread":Ljava/lang/Object;
    .end local v3    # "mActivities":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Ljava/lang/Object;>;"
    :goto_0
    return v4

    .line 390
    .restart local v1    # "activityThread":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v5, "PluginCallback"

    const-string/jumbo v6, "preHandleStopActivity end"

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v4, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    .line 391
    .end local v1    # "activityThread":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PluginCallback"

    const-string/jumbo v6, "preHandleStopActivity error"

    invoke-static {v5, v6, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 399
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "activityThread":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private preHandleStopService(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 661
    :try_start_0
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleStopService begin"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "activityThread":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 665
    const-string/jumbo v8, "mServices"

    invoke-static {v0, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 666
    .local v6, "services":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/Service;>;"
    if-eqz v6, :cond_0

    .line 668
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 669
    .local v5, "service":Landroid/app/Service;
    if-eqz v5, :cond_0

    .line 670
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "pluginServiceClassName":Ljava/lang/String;
    const-string/jumbo v8, "PluginCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "preHandleStopService:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v2, "pluginComponentName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Lcom/iflytek/greenplug/client/PluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 674
    .local v4, "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/iflytek/greenplug/client/PluginManager;->unBindStubService(Landroid/content/pm/ServiceInfo;)V

    .line 679
    .end local v2    # "pluginComponentName":Landroid/content/ComponentName;
    .end local v3    # "pluginServiceClassName":Ljava/lang/String;
    .end local v4    # "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "service":Landroid/app/Service;
    .end local v6    # "services":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/Service;>;"
    :cond_0
    const-string/jumbo v8, "PluginCallback"

    const-string/jumbo v9, "preHandleStopService end"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v8, :cond_1

    .line 686
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v7, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v7

    .line 688
    .end local v0    # "activityThread":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v7

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleStopService error"

    invoke-static {v7, v8, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private preHandleUnbindService(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 607
    :try_start_0
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleUnbindService begin"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 610
    .local v2, "obj":Ljava/lang/Object;
    const-string/jumbo v7, "intent"

    invoke-static {v2, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 613
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 614
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleUnbindService, intent is null"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleUnbindService end"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v5, :cond_4

    .line 652
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v5, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    .line 654
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    return v5

    .line 617
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 618
    const-string/jumbo v7, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 621
    .local v4, "targetIntent":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 622
    const-string/jumbo v7, "PluginCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preHandleUnbindService, targetIntent is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 626
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleUnbindService\uff0cPluginManagerService not connected, post and wait"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mOldHandle:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 646
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v4    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginCallback"

    const-string/jumbo v7, "preHandleUnbindService error"

    invoke-static {v6, v7, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 632
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v4    # "targetIntent":Landroid/content/Intent;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 633
    .local v3, "targetComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_2

    .line 635
    const-string/jumbo v6, "PluginCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preHandleUnbindService, plugin package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not exist, so return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    :cond_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v8, "intent"

    invoke-static {v7, v8, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 641
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :cond_3
    const-string/jumbo v7, "PluginCallback"

    const-string/jumbo v8, "preHandleUnbindService, targetIntent is null"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v4    # "targetIntent":Landroid/content/Intent;
    :cond_4
    move v5, v6

    .line 654
    goto/16 :goto_1
.end method

.method private setIntentClassLoader(Landroid/content/Intent;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 761
    :try_start_0
    const-string/jumbo v3, "mExtras"

    invoke-static {p1, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 762
    .local v1, "mExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 774
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 765
    .restart local v1    # "mExtras":Landroid/os/Bundle;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 766
    .local v2, "value":Landroid/os/Bundle;
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 767
    const-string/jumbo v3, "mExtras"

    invoke-static {p1, v3, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 769
    .end local v1    # "mExtras":Landroid/os/Bundle;
    .end local v2    # "value":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "PluginCallback"

    const-string/jumbo v4, "setIntentClassLoader error"

    invoke-static {v3, v4, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 772
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    throw v3
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string/jumbo v0, "LAUNCH_ACTIVITY"

    goto :goto_0

    .line 88
    :pswitch_1
    const-string/jumbo v0, "PAUSE_ACTIVITY"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string/jumbo v0, "PAUSE_ACTIVITY_FINISHING"

    goto :goto_0

    .line 92
    :pswitch_3
    const-string/jumbo v0, "STOP_ACTIVITY_SHOW"

    goto :goto_0

    .line 94
    :pswitch_4
    const-string/jumbo v0, "STOP_ACTIVITY_HIDE"

    goto :goto_0

    .line 96
    :pswitch_5
    const-string/jumbo v0, "SHOW_WINDOW"

    goto :goto_0

    .line 98
    :pswitch_6
    const-string/jumbo v0, "HIDE_WINDOW"

    goto :goto_0

    .line 100
    :pswitch_7
    const-string/jumbo v0, "RESUME_ACTIVITY"

    goto :goto_0

    .line 102
    :pswitch_8
    const-string/jumbo v0, "SEND_RESULT"

    goto :goto_0

    .line 104
    :pswitch_9
    const-string/jumbo v0, "DESTROY_ACTIVITY"

    goto :goto_0

    .line 106
    :pswitch_a
    const-string/jumbo v0, "BIND_APPLICATION"

    goto :goto_0

    .line 108
    :pswitch_b
    const-string/jumbo v0, "EXIT_APPLICATION"

    goto :goto_0

    .line 110
    :pswitch_c
    const-string/jumbo v0, "NEW_INTENT"

    goto :goto_0

    .line 112
    :pswitch_d
    const-string/jumbo v0, "RECEIVER"

    goto :goto_0

    .line 114
    :pswitch_e
    const-string/jumbo v0, "CREATE_SERVICE"

    goto :goto_0

    .line 116
    :pswitch_f
    const-string/jumbo v0, "SERVICE_ARGS"

    goto :goto_0

    .line 118
    :pswitch_10
    const-string/jumbo v0, "STOP_SERVICE"

    goto :goto_0

    .line 120
    :pswitch_11
    const-string/jumbo v0, "REQUEST_THUMBNAIL"

    goto :goto_0

    .line 122
    :pswitch_12
    const-string/jumbo v0, "CONFIGURATION_CHANGED"

    goto :goto_0

    .line 124
    :pswitch_13
    const-string/jumbo v0, "CLEAN_UP_CONTEXT"

    goto :goto_0

    .line 126
    :pswitch_14
    const-string/jumbo v0, "GC_WHEN_IDLE"

    goto :goto_0

    .line 128
    :pswitch_15
    const-string/jumbo v0, "BIND_SERVICE"

    goto :goto_0

    .line 130
    :pswitch_16
    const-string/jumbo v0, "UNBIND_SERVICE"

    goto :goto_0

    .line 132
    :pswitch_17
    const-string/jumbo v0, "DUMP_SERVICE"

    goto :goto_0

    .line 134
    :pswitch_18
    const-string/jumbo v0, "LOW_MEMORY"

    goto :goto_0

    .line 136
    :pswitch_19
    const-string/jumbo v0, "ACTIVITY_CONFIGURATION_CHANGED"

    goto :goto_0

    .line 138
    :pswitch_1a
    const-string/jumbo v0, "RELAUNCH_ACTIVITY"

    goto :goto_0

    .line 140
    :pswitch_1b
    const-string/jumbo v0, "PROFILER_CONTROL"

    goto :goto_0

    .line 142
    :pswitch_1c
    const-string/jumbo v0, "CREATE_BACKUP_AGENT"

    goto :goto_0

    .line 144
    :pswitch_1d
    const-string/jumbo v0, "DESTROY_BACKUP_AGENT"

    goto :goto_0

    .line 146
    :pswitch_1e
    const-string/jumbo v0, "SUICIDE"

    goto :goto_0

    .line 148
    :pswitch_1f
    const-string/jumbo v0, "REMOVE_PROVIDER"

    goto :goto_0

    .line 150
    :pswitch_20
    const-string/jumbo v0, "ENABLE_JIT"

    goto/16 :goto_0

    .line 152
    :pswitch_21
    const-string/jumbo v0, "DISPATCH_PACKAGE_BROADCAST"

    goto/16 :goto_0

    .line 154
    :pswitch_22
    const-string/jumbo v0, "SCHEDULE_CRASH"

    goto/16 :goto_0

    .line 156
    :pswitch_23
    const-string/jumbo v0, "DUMP_HEAP"

    goto/16 :goto_0

    .line 158
    :pswitch_24
    const-string/jumbo v0, "DUMP_ACTIVITY"

    goto/16 :goto_0

    .line 160
    :pswitch_25
    const-string/jumbo v0, "SLEEPING"

    goto/16 :goto_0

    .line 162
    :pswitch_26
    const-string/jumbo v0, "SET_CORE_SETTINGS"

    goto/16 :goto_0

    .line 164
    :pswitch_27
    const-string/jumbo v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    goto/16 :goto_0

    .line 166
    :pswitch_28
    const-string/jumbo v0, "TRIM_MEMORY"

    goto/16 :goto_0

    .line 168
    :pswitch_29
    const-string/jumbo v0, "DUMP_PROVIDER"

    goto/16 :goto_0

    .line 170
    :pswitch_2a
    const-string/jumbo v0, "UNSTABLE_PROVIDER_DIED"

    goto/16 :goto_0

    .line 172
    :pswitch_2b
    const-string/jumbo v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    goto/16 :goto_0

    .line 174
    :pswitch_2c
    const-string/jumbo v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    goto/16 :goto_0

    .line 176
    :pswitch_2d
    const-string/jumbo v0, "INSTALL_PROVIDER"

    goto/16 :goto_0

    .line 178
    :pswitch_2e
    const-string/jumbo v0, "ON_NEW_ACTIVITY_OPTIONS"

    goto/16 :goto_0

    .line 180
    :pswitch_2f
    const-string/jumbo v0, "CANCEL_VISIBLE_BEHIND"

    goto/16 :goto_0

    .line 182
    :pswitch_30
    const-string/jumbo v0, "BACKGROUND_VISIBLE_BEHIND_CHANGED"

    goto/16 :goto_0

    .line 184
    :pswitch_31
    const-string/jumbo v0, "ENTER_ANIMATION_COMPLETE"

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 212
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage begin, msg is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "b":J
    :try_start_0
    iget-boolean v3, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mEnable:Z

    if-nez v3, :cond_0

    .line 216
    const-string/jumbo v3, "PluginCallback"

    const-string/jumbo v4, "handleMessage, mEnable is false, so return false"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return v2

    .line 220
    :cond_0
    :try_start_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleLaunchActivity(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    :try_start_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x70

    if-ne v3, v4, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleNewIntent(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_2
    :try_start_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x67

    if-eq v3, v4, :cond_3

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x68

    if-ne v3, v4, :cond_4

    .line 225
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleStopActivity(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_4
    :try_start_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_5

    .line 227
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleDestroyActivity(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_5
    :try_start_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x72

    if-ne v3, v4, :cond_6

    .line 229
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleCreateService(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_6
    :try_start_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x73

    if-ne v3, v4, :cond_7

    .line 231
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleServiceArgs(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_7
    :try_start_7
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x79

    if-ne v3, v4, :cond_8

    .line 233
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleBindService(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_8
    :try_start_8
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_9

    .line 235
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleUnbindService(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_9
    :try_start_9
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x74

    if-ne v3, v4, :cond_a

    .line 237
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleStopService(Landroid/os/Message;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_a
    :try_start_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x71

    if-ne v3, v4, :cond_b

    .line 239
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->preHandleReceiver(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v3, :cond_c

    .line 243
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v2

    .line 248
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    const-string/jumbo v3, "PluginCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage end: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->codeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->mEnable:Z

    .line 204
    return-void
.end method
