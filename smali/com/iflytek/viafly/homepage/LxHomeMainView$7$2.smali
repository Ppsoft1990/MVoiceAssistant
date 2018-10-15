.class Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1236
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1238
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->u(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1242
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->v(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajl;

    .line 1243
    .local v1, "listener":Lajl;
    if-eqz v1, :cond_1

    .line 1244
    sget-object v3, Lcom/iflytek/viafly/homepage/base/HomeEvent;->load_net_data:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-interface {v1, v3}, Lajl;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    goto :goto_1

    .line 1248
    .end local v1    # "listener":Lajl;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->v(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1249
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 1250
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a()V

    .line 1251
    return-void
.end method
