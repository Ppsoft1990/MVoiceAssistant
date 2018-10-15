.class Lqq$1$2;
.super Lmt;
.source "MainSpeechToolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqq$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqq$1;


# direct methods
.method constructor <init>(Lqq$1;)V
    .locals 0
    .param p1, "this$1"    # Lqq$1;

    .prologue
    .line 147
    iput-object p1, p0, Lqq$1$2;->a:Lqq$1;

    invoke-direct {p0}, Lmt;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 8
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lmt;->onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 151
    const/16 v4, 0x12d

    if-ne p1, v4, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 153
    .local v2, "Finsh_s":J
    const-string/jumbo v4, "GP_PLUGIN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GP_Mobius_Finsh_Start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->enterPlugin(I)I

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    .local v0, "Finsh_e":J
    const-string/jumbo v4, "GP_PLUGIN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GP_Mobius_Finish_End: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v4, "GP_PLUGIN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GP_Mobius_Finish_COST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lari;->a()Lari;

    move-result-object v4

    const-string/jumbo v5, "MainSpeechToolAdapter"

    invoke-virtual {v4, v5}, Lari;->a(Ljava/lang/String;)V

    .line 164
    .end local v0    # "Finsh_e":J
    .end local v2    # "Finsh_s":J
    :cond_0
    return-void
.end method
