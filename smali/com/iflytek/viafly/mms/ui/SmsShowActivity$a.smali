.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p2, "x1"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->n(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1145
    .local v0, "textLength":I
    const-string/jumbo v1, "SmsShowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "edit text count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    if-nez v0, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    move-result v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->q(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1159
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1165
    return-void
.end method
