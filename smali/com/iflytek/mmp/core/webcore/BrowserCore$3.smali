.class Lcom/iflytek/mmp/core/webcore/BrowserCore$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;


# direct methods
.method constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$3;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$3;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v1, v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startNetSetting()"

    invoke-static {v1, v2, v0}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
