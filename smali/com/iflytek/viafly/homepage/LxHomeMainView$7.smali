.class Lcom/iflytek/viafly/homepage/LxHomeMainView$7;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1212
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1215
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "load more over time"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->h(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1217
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView$7;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView$7;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
