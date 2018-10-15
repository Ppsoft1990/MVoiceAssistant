.class public Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;
.super Landroid/app/Instrumentation;
.source "PluginInstrumentation.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private enable:Z

.field private final mHostContext:Landroid/content/Context;

.field protected mTarget:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/app/Instrumentation;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mTarget:Landroid/app/Instrumentation;

    .line 45
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private fixBaseContextImplContentResolverOpsPackage(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 133
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-lt v8, v9, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 134
    move-object v0, p1

    .line 135
    .local v0, "baseContext":Landroid/content/Context;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "clazz":Ljava/lang/Class;
    const-string/jumbo v8, "mContentResolver"

    invoke-static {v1, v8, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 137
    .local v3, "mContentResolver":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 139
    .local v7, "valueObj":Ljava/lang/Object;
    instance-of v8, v7, Landroid/content/ContentResolver;

    if-eqz v8, :cond_0

    move-object v2, v7

    .line 140
    check-cast v2, Landroid/content/ContentResolver;

    .line 141
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-class v8, Landroid/content/ContentResolver;

    const-string/jumbo v9, "mPackageName"

    invoke-static {v8, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 142
    .local v4, "mPackageName":Ljava/lang/reflect/Field;
    if-nez v4, :cond_1

    .line 157
    .end local v0    # "baseContext":Landroid/content/Context;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "mContentResolver":Ljava/lang/reflect/Field;
    .end local v4    # "mPackageName":Ljava/lang/reflect/Field;
    .end local v7    # "valueObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0    # "baseContext":Landroid/content/Context;
    .restart local v1    # "clazz":Ljava/lang/Class;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "mContentResolver":Ljava/lang/reflect/Field;
    .restart local v4    # "mPackageName":Ljava/lang/reflect/Field;
    .restart local v7    # "valueObj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    .local v5, "mPackageNameValueObj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 148
    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 150
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fixBaseContextImplContentResolverOpsPackage OK!Context="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",contentResolver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fixBaseContextImplOpsPackage(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 115
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    move-object v0, p1

    .line 117
    .local v0, "baseContext":Landroid/content/Context;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 118
    .local v1, "clazz":Ljava/lang/Class;
    const-string/jumbo v5, "mOpPackageName"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 119
    .local v2, "mOpPackageName":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    .local v4, "valueObj":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 122
    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "opPackageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget-object v5, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fixBaseContextImplOpsPackage OK!Context="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v0    # "baseContext":Landroid/content/Context;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "mOpPackageName":Ljava/lang/reflect/Field;
    .end local v3    # "opPackageName":Ljava/lang/String;
    .end local v4    # "valueObj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private registerStaticReceiver(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/greenplug/client/PluginManager;->getReceivers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 162
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 163
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mHostContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/ProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "currentProcessName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 166
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 168
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/iflytek/greenplug/client/PluginManager;->getReceiverIntentFilter(Landroid/content/pm/ActivityInfo;)Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    .line 170
    .local v6, "receiver":Landroid/content/BroadcastReceiver;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 171
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "registerStaticReceiver receiver"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,IntentFilter:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v6    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerStaticReceiver error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    sget-object v7, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerStaticReceiver end, currentProcessName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v0    # "currentProcessName":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iget-boolean v2, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->enable:Z

    if-eqz v2, :cond_1

    .line 52
    invoke-static {p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->fixWindowManagerHook(Landroid/app/Activity;)V

    .line 53
    invoke-static {p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->fixContextPackageManager(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/greenplug/client/PluginManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 56
    .local v1, "targetInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 58
    iget v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->fixBaseContextImplOpsPackage(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->fixBaseContextImplContentResolverOpsPackage(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v1    # "targetInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mTarget:Landroid/app/Instrumentation;

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mTarget:Landroid/app/Instrumentation;

    invoke-virtual {v2, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 79
    :goto_2
    return-void

    .line 63
    .restart local v1    # "targetInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "callActivityOnCreate:fixBaseContextImplOpsPackage"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "callActivityOnCreate:fixBaseContextImplContentResolverOpsPackage"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "targetInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->enable:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-static {p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->fixContextPackageManager(Landroid/content/Context;)V

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->fixBaseContextImplOpsPackage(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->fixBaseContextImplContentResolverOpsPackage(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mTarget:Landroid/app/Instrumentation;

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->mTarget:Landroid/app/Instrumentation;

    invoke-virtual {v1, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 105
    :goto_2
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->enable:Z

    if-eqz v1, :cond_1

    .line 107
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->registerStaticReceiver(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :cond_1
    :goto_3
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "callApplicationOnCreate:fixBaseContextImplOpsPackage"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "callApplicationOnCreate:fixBaseContextImplContentResolverOpsPackage"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    goto :goto_2

    .line 108
    :catch_2
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerStaticReceiver"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->enable:Z

    .line 41
    return-void
.end method
