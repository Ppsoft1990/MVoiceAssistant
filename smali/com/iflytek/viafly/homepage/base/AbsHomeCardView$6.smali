.class Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;
.super Ljava/lang/Object;
.source "AbsHomeCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 350
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->a(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "click cancel"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->h(Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 352
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 353
    .local v0, "changeOrderEvent":Laia;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laia;->b(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laia;->a(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, v3}, Laia;->a(Z)V

    .line 356
    invoke-virtual {v0, v3}, Laia;->b(Z)V

    .line 357
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView$6;->a:Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    const-string/jumbo v2, "cancel"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->d(Ljava/lang/String;)V

    .line 360
    return-void
.end method
