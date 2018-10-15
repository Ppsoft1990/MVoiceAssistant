.class Lcom/iflytek/viafly/homepage/LxHomeMainView$5;
.super Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler2;
.source "LxHomeMainView.java"


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
    .line 1126
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler2;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 4
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 1161
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "pull to loadMore begin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxd;->a(Landroid/content/Context;)Lxd;

    move-result-object v0

    invoke-virtual {v0}, Lxd;->a()V

    .line 1164
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1165
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1166
    return-void
.end method

.method public onRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 4
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 1130
    const-string/jumbo v0, "LxHomeMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is auto :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxd;->a(Landroid/content/Context;)Lxd;

    move-result-object v0

    invoke-virtual {v0}, Lxd;->a()V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90025"

    const/4 v2, 0x0

    .line 1136
    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1138
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100106"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "pull to refresh begin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1144
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setMode(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;)V

    .line 1145
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$5$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$5$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView$5;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->post(Ljava/lang/Runnable;)Z

    .line 1157
    :cond_1
    return-void
.end method
