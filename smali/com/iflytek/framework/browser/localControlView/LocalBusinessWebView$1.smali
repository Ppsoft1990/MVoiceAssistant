.class Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$1;
.super Ljava/lang/Object;
.source "LocalBusinessWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$1;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method
