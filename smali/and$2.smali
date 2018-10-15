.class Land$2;
.super Ljava/lang/Object;
.source "BookCollectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Land;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Land;


# direct methods
.method constructor <init>(Land;Lamo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Land;

    .prologue
    .line 121
    iput-object p1, p0, Land$2;->c:Land;

    iput-object p2, p0, Land$2;->a:Lamo;

    iput-object p3, p0, Land$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v1, p0, Land$2;->c:Land;

    invoke-static {v1}, Land;->b(Land;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v2, p0, Land$2;->a:Lamo;

    iget-object v1, p0, Land$2;->a:Lamo;

    invoke-virtual {v1}, Lamo;->i()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lamo;->a(Z)V

    .line 126
    iget-object v1, p0, Land$2;->c:Land;

    invoke-virtual {v1}, Land;->notifyDataSetChanged()V

    .line 127
    iget-object v1, p0, Land$2;->c:Land;

    invoke-static {v1}, Land;->a(Land;)Land$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Land$2;->c:Land;

    invoke-static {v1}, Land;->a(Land;)Land$a;

    move-result-object v1

    invoke-interface {v1}, Land$a;->a()V

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Land$2;->b:Ljava/lang/String;

    invoke-static {v1}, Lazo;->a(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "itemClick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90102"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
