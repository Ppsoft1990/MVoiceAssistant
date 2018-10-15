.class Lasi$3;
.super Ljava/lang/Object;
.source "EnterPluginHelper.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasi;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field final synthetic c:Lasi;


# direct methods
.method constructor <init>(Lasi;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 0
    .param p1, "this$0"    # Lasi;

    .prologue
    .line 183
    iput-object p1, p0, Lasi$3;->c:Lasi;

    iput p2, p0, Lasi$3;->a:I

    iput-object p3, p0, Lasi$3;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginEventChange(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "pluginKind"    # Ljava/lang/String;
    .param p3, "pluginType"    # I
    .param p4, "pluginEvent"    # I
    .param p5, "errorCode"    # I

    .prologue
    .line 187
    iget v0, p0, Lasi$3;->a:I

    if-eq p3, v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    const v0, 0x8000

    if-ne p5, v0, :cond_0

    iget-object v0, p0, Lasi$3;->c:Lasi;

    .line 193
    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lasi$3;->c:Lasi;

    invoke-static {v0}, Lasi;->a(Lasi;)Lasi$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lasi$a;->onOutsidePluginInstallSuccess(I)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lasi$3;->c:Lasi;

    iget-object v1, p0, Lasi$3;->b:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-static {v0, p3, p5, v1}, Lasi;->a(Lasi;IILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
