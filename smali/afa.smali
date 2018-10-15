.class public Lafa;
.super Landroid/text/style/ClickableSpan;
.source "CustomUrlSpan.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 20
    iput-object p1, p0, Lafa;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lafa;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lafa;->b:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 32
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 34
    return-void
.end method
