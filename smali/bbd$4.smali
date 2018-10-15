.class Lbbd$4;
.super Ljava/lang/Object;
.source "VoiceCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field final synthetic b:Lbbd;


# direct methods
.method constructor <init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lbbd;

    .prologue
    .line 186
    iput-object p1, p0, Lbbd$4;->b:Lbbd;

    iput-object p2, p0, Lbbd$4;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lbbd$4;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    invoke-static {v0}, Lbbd;->b(Lbbd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7cfb\u7edf\u8bed\u97f3:\u7075\u7280\u4e3b\u53d1\u58f0\u4eba\uff0c\u9002\u7528\u4e8e\u9ea6\u514b\u98ce\u3001\u63d0\u9192\u3001\u901f\u8bb0\u3001\u6765\u7535\u64ad\u62a5(\u5b89\u5353)\u7b49\u529f\u80fd\u6a21\u5757\u3002"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lbbd$4;->b:Lbbd;

    invoke-static {v0}, Lbbd;->b(Lbbd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u573a\u666f\u8bed\u97f3:\u9002\u7528\u4e8e\u7279\u5b9a\u573a\u666f\u7684\u8bed\u97f3\uff0c\u5305\u62ec\u65e9\u665a\u5b89\u63d0\u9192\u3001\u6765\u7535\u64ad\u62a5(\u5b89\u5353)\u7b49\u3002"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
