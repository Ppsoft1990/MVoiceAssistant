.class Larp;
.super Ljava/lang/Object;
.source "PluginInstallHelper.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larp$a;
    }
.end annotation


# instance fields
.field private a:Larp$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Larp$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Larp$a;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Larp;->a:Larp$a;

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "pluginType"    # I

    .prologue
    .line 66
    invoke-static {p1}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    invoke-interface {v1, v0, p1, p0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->installPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 69
    return-void
.end method

.method public onPluginEventChange(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "pluginKind"    # Ljava/lang/String;
    .param p3, "pluginType"    # I
    .param p4, "pluginEvent"    # I
    .param p5, "errorCode"    # I

    .prologue
    const v3, 0x8000

    .line 28
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

    .line 29
    packed-switch p4, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 31
    :pswitch_1
    iget-object v0, p0, Larp;->a:Larp$a;

    if-eqz v0, :cond_0

    .line 34
    if-ne v3, p5, :cond_1

    .line 35
    iget-object v0, p0, Larp;->a:Larp$a;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Larp$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Larp;->a:Larp$a;

    invoke-interface {v0, p3, p5}, Larp$a;->b(II)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Larp;->a:Larp$a;

    if-eqz v0, :cond_0

    .line 44
    if-ne v3, p5, :cond_2

    .line 45
    iget-object v0, p0, Larp;->a:Larp$a;

    invoke-interface {v0, p3}, Larp$a;->a(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Larp;->a:Larp$a;

    invoke-interface {v0, p3, p5}, Larp$a;->a(II)V

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v0, p0, Larp;->a:Larp$a;

    if-eqz v0, :cond_0

    .line 54
    if-ne v3, p5, :cond_3

    .line 55
    iget-object v0, p0, Larp;->a:Larp$a;

    invoke-interface {v0, p3, p2}, Larp$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Larp;->a:Larp$a;

    invoke-interface {v0, p3, p5}, Larp$a;->b(II)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
