.class Lcom/iflytek/viafly/guide/UserGuideActivity$1;
.super Ljava/lang/Object;
.source "UserGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/guide/UserGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/UserGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/UserGuideActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideActivity$1;->a:Lcom/iflytek/viafly/guide/UserGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity$1;->a:Lcom/iflytek/viafly/guide/UserGuideActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/UserGuideActivity;->finish()V

    .line 41
    return-void
.end method
