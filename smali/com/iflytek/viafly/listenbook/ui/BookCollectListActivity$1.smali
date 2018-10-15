.class Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;
.super Ljava/lang/Object;
.source "BookCollectListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;->b:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;->b:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;Ljava/util/List;)V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "delete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90102"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    return-void
.end method
