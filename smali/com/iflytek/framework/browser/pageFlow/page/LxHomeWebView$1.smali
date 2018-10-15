.class Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$1;
.super Ljava/lang/Object;
.source "LxHomeWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method
