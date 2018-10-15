.class final Lcom/iflytek/viafly/ui/InteractiveToast$1;
.super Ljava/lang/Object;
.source "InteractiveToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/InteractiveToast;->getLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$1;->val$onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$1;->val$onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;->onBtnClick(I)V

    .line 75
    return-void
.end method
