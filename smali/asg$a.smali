.class Lasg$a;
.super Ljava/lang/Object;
.source "NetPluginInfoManager.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lasg;

.field private b:Lasg$b;

.field private c:Z


# direct methods
.method public constructor <init>(Lasg;ZLasg$b;)V
    .locals 1
    .param p2, "isRequestingAllPlugins"    # Z
    .param p3, "listener"    # Lasg$b;

    .prologue
    .line 96
    iput-object p1, p0, Lasg$a;->a:Lasg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lasg$a;->b:Lasg$b;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasg$a;->c:Z

    .line 97
    iput-object p3, p0, Lasg$a;->b:Lasg$b;

    .line 98
    iput-boolean p2, p0, Lasg$a;->c:Z

    .line 99
    return-void
.end method


# virtual methods
.method public onUpdateError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lasg$a;->a:Lasg;

    invoke-virtual {v0}, Lasg;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/util/List;)V

    .line 131
    iget-object v0, p0, Lasg$a;->b:Lasg$b;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lasg$a;->b:Lasg$b;

    invoke-interface {v0}, Lasg$b;->a()V

    .line 134
    :cond_0
    return-void
.end method

.method public onUpdateSuccess([ILcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V
    .locals 4
    .param p1, "pluginTypes"    # [I
    .param p2, "info"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    .line 103
    const-string/jumbo v2, "NetPluginInfoManager"

    const-string/jumbo v3, "onUpdateSuccess() plugin res request success"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lasg$a;->a:Lasg;

    invoke-virtual {v2}, Lasg;->c()Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 106
    new-instance v0, Lash;

    invoke-direct {v0}, Lash;-><init>()V

    .line 107
    .local v0, "filter":Lasf;
    invoke-interface {v0, p2}, Lasf;->a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V

    .line 109
    invoke-static {p2}, Lasg;->a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lasg;->a(Ljava/util/List;)V

    .line 114
    iget-object v2, p0, Lasg$a;->a:Lasg;

    invoke-static {v2}, Lasg;->a(Lasg;)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    move-result-object v1

    .line 116
    .local v1, "historyPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    iget-object v2, p0, Lasg$a;->a:Lasg;

    iget-boolean v3, p0, Lasg$a;->c:Z

    invoke-static {v2, v3, p2}, Lasg;->a(Lasg;ZLcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V

    .line 118
    iget-object v2, p0, Lasg$a;->b:Lasg$b;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lasg$a;->b:Lasg$b;

    iget-object v3, p0, Lasg$a;->a:Lasg;

    invoke-static {v3}, Lasg;->a(Lasg;)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    move-result-object v3

    invoke-interface {v2, p1, v1, v3}, Lasg$b;->a([ILcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V

    .line 125
    .end local v1    # "historyPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lasg$a;->onUpdateError(Ljava/lang/String;)V

    goto :goto_0
.end method
