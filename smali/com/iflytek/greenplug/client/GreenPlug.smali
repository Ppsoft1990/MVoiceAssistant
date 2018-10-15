.class public Lcom/iflytek/greenplug/client/GreenPlug;
.super Ljava/lang/Object;
.source "GreenPlug.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GreenPlug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePackage(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->deletePackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deletePackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/iflytek/greenplug/client/TaskListener;

    .prologue
    .line 81
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->deletePackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V

    .line 82
    return-void
.end method

.method public static getAllPackageInfos(I)Ljava/util/List;
    .locals 1
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->getAllPackageInfos(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 151
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/iflytek/greenplug/client/InitListener;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/iflytek/greenplug/client/InitListener;
    .param p2, "flagForceStartPMS"    # Z

    .prologue
    .line 37
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/greenplug/client/PluginManager;->init(Landroid/content/Context;Lcom/iflytek/greenplug/client/InitListener;Z)V

    .line 38
    return-void
.end method

.method public static installPackage(Ljava/lang/String;)I
    .locals 1
    .param p0, "apkfile"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->installPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static installPackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
    .locals 1
    .param p0, "apkfile"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/iflytek/greenplug/client/TaskListener;

    .prologue
    .line 59
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->installPackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V

    .line 60
    return-void
.end method

.method public static isPluginRunning(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setDebugLogging(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 26
    invoke-static {p0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->setDebugLogging(Z)V

    .line 27
    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->startActivity(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static startPackage(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->startPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static startService(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->startService(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static stopPackage(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->forceStopPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
