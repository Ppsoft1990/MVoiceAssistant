.class Larr;
.super Ljava/lang/Object;
.source "PluginUninstallHelper.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larr$a;
    }
.end annotation


# instance fields
.field private a:Larr$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Larr$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Larr$a;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Larr;->a:Larr$a;

    .line 21
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 24
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->uninstallPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 25
    return-void
.end method

.method public onPluginEventChange(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "pluginKind"    # Ljava/lang/String;
    .param p3, "pluginType"    # I
    .param p4, "pluginEvent"    # I
    .param p5, "errorCode"    # I

    .prologue
    .line 29
    const-string/jumbo v0, "PluginInstallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginEventChange, pluginevent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errorCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    packed-switch p4, :pswitch_data_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_0
    packed-switch p5, :pswitch_data_1

    .line 39
    iget-object v0, p0, Larr;->a:Larr$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Larr;->a:Larr$a;

    invoke-interface {v0, p3, p5}, Larr$a;->a(II)V

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Larr;->a:Larr$a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Larr;->a:Larr$a;

    invoke-interface {v0, p3}, Larr$a;->a(I)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch

    .line 32
    :pswitch_data_1
    .packed-switch 0x8000
        :pswitch_1
    .end packed-switch
.end method
