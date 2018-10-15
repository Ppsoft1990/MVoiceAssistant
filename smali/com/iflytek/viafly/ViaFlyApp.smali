.class public final Lcom/iflytek/viafly/ViaFlyApp;
.super Landroid/app/Application;
.source "ViaFlyApp.java"

# interfaces
.implements Lcom/iflytek/greenplug/client/InitListener;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/iflytek/viafly/ViaFlyApp;


# instance fields
.field private c:Z

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ViaFlyApp;->e:Z

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/iflytek/viafly/ViaFlyApp;->b:Lcom/iflytek/viafly/ViaFlyApp;

    return-object v0
.end method

.method public static a(Lcom/iflytek/yd/base/ProcessListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/iflytek/yd/base/ProcessListener;

    .prologue
    .line 171
    invoke-static {}, Laql;->a()Laql;

    move-result-object v0

    invoke-virtual {v0, p0}, Laql;->addProcessListener(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 172
    return-void
.end method

.method public static b(Lcom/iflytek/yd/base/ProcessListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/iflytek/yd/base/ProcessListener;

    .prologue
    .line 179
    invoke-static {}, Laql;->a()Laql;

    move-result-object v0

    invoke-virtual {v0, p0}, Laql;->removeProcessListener(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 180
    return-void
.end method

.method public static c()Lcom/iflytek/viafly/ViaFlyApp;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/iflytek/viafly/ViaFlyApp;->b:Lcom/iflytek/viafly/ViaFlyApp;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Laql;->a()Laql;

    move-result-object v0

    invoke-virtual {v0}, Laql;->b()Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 192
    const-string/jumbo v0, "/data/data/com.iflytek.cmcc"

    .line 194
    .local v0, "dataPath":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 211
    .end local v0    # "dataPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 198
    .restart local v0    # "dataPath":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/iflytek/viafly/ViaFlyApp;->a:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 199
    .local v2, "userManager":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    const-string/jumbo v3, "ViaFlyApp"

    const-string/jumbo v4, "getApplicationFilePath  is owner or sdk low to 23"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    const-string/jumbo v3, "ViaFlyApp"

    const-string/jumbo v4, "getApplicationFilePath is guest"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v3, Lcom/iflytek/viafly/ViaFlyApp;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "defaultFilePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-static {v1}, Lcom/iflytek/greenplug/client/GreenPlug;->setDebugLogging(Z)V

    .line 143
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lcom/iflytek/greenplug/client/GreenPlug;->init(Landroid/content/Context;Lcom/iflytek/greenplug/client/InitListener;Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/iflytek/viafly/ViaFlyApp;->c:Z

    .line 156
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 122
    sput-object p1, Lcom/iflytek/viafly/ViaFlyApp;->a:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 126
    const-string/jumbo v2, "ViaFlyApp"

    const-string/jumbo v3, "initApp"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v2, Lcom/iflytek/viafly/ViaFlyApp;->b:Lcom/iflytek/viafly/ViaFlyApp;

    invoke-static {v2}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v2

    invoke-virtual {v2}, Ltd;->e()V

    .line 133
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ViaFlyApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ViaFlyApp"

    const-string/jumbo v3, "initApp()"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/iflytek/viafly/ViaFlyApp;->c:Z

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/iflytek/viafly/ViaFlyApp;->d:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/iflytek/viafly/ViaFlyApp;->e:Z

    return v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    invoke-static {p0}, Lazk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "processName":Ljava/lang/String;
    sput-object p0, Lcom/iflytek/viafly/ViaFlyApp;->b:Lcom/iflytek/viafly/ViaFlyApp;

    .line 51
    const-string/jumbo v1, "com.iflytek.cmcc:remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc:pushservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const-string/jumbo v1, "com.iflytek.cmcc:monitorService"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const-string/jumbo v1, "com.iflytek.cmcc:MiguSsoService"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string/jumbo v1, "com.iflytek.cmcc:AgentService"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/yd/log/Logging;->setDebugLogging(Z)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/ViaFlyApp;->d:J

    .line 81
    const-string/jumbo v1, "ApplicationLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process onCreate begin timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/iflytek/viafly/ViaFlyApp;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v1, "ViaFlyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p0}, Lil;->a(Landroid/content/Context;)V

    .line 89
    const-string/jumbo v1, "com.iflytek.cmcc:player"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string/jumbo v1, "com.iflytek.cmcc:cmcclocate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string/jumbo v1, "ApplicationLoader"

    const-string/jumbo v2, "cmcclocate process"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/ViaFlyApp;->i()V

    .line 103
    const-string/jumbo v1, "com.iflytek.cmcc:background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    if-eqz v0, :cond_3

    const-string/jumbo v1, "com.iflytek.cmcc:GreenPlugin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/ViaFlyApp;->b()V

    .line 116
    :cond_4
    const-string/jumbo v1, "ApplicationLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process onCreate end = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/viafly/ViaFlyApp;->d:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onInitSuccess()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ViaFlyApp;->e:Z

    .line 218
    return-void
.end method
