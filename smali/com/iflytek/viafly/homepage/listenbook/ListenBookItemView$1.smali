.class Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;
.super Ljava/lang/Object;
.source "ListenBookItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;->a:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;->a:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;->a:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;->a:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->b(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)Lakx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;->a(Lakx;)V

    .line 61
    :cond_0
    return-void
.end method
