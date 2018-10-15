.class Lcom/iflytek/mmp/core/webcore/BrowserCore$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;


# direct methods
.method constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$2;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$400()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$402(J)J

    :goto_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$2;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->reload()V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$400()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "You clicked too fast..."

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$402(J)J

    goto :goto_0
.end method
