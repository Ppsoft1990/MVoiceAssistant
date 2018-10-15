.class Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;
.super Ljava/lang/Object;
.source "TranslateReportErrorLayout.java"

# interfaces
.implements Lajm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Laxp;->a:Z

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;->b()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Laxp;->a:Z

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;->a()V

    .line 101
    :cond_0
    return-void
.end method
