.class Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$1;
.super Ljava/lang/Object;
.source "TranslateTextLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 139
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    .line 140
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 142
    const-string/jumbo v0, "TranslateTextLayout"

    const-string/jumbo v1, "onEditorAction: \u4f60\u70b9\u51fb\u4e86\u8f93\u5165\u6cd5\u7684\u56de\u8f66\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V

    .line 146
    const/4 v0, 0x0

    .line 148
    :cond_0
    return v0
.end method
