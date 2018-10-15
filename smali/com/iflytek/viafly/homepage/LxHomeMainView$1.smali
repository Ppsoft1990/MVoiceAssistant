.class Lcom/iflytek/viafly/homepage/LxHomeMainView$1;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Laik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1077
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "loadMore success"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1080
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "refresh success"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1085
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "loadMore fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1102
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1103
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1104
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1105
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendMessage(Landroid/os/Message;)Z

    .line 1106
    return-void

    .line 1095
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90026"

    const/4 v3, 0x0

    .line 1097
    invoke-virtual {v1, v2, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1099
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "refresh fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
