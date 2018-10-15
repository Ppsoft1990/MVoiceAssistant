.class Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;
.super Ljava/lang/Object;
.source "MovicesCardItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;->a:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;->a:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;->a:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;->a:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->b(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)Lalf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;->a(Lalf;)V

    .line 66
    :cond_0
    return-void
.end method
