.class Laas$1;
.super Ljava/lang/Object;
.source "CmbusinessSimcardHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laas;->a(Ljava/lang/String;Landroid/content/Context;Laas$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Laas$a;

.field final synthetic d:Laas;


# direct methods
.method constructor <init>(Laas;Landroid/content/Context;Ljava/lang/String;Laas$a;)V
    .locals 0
    .param p1, "this$0"    # Laas;

    .prologue
    .line 110
    iput-object p1, p0, Laas$1;->d:Laas;

    iput-object p2, p0, Laas$1;->a:Landroid/content/Context;

    iput-object p3, p0, Laas$1;->b:Ljava/lang/String;

    iput-object p4, p0, Laas$1;->c:Laas$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 114
    const-string/jumbo v0, "CmbusinessSimcardHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6240\u9009\u8fd0\u8425\u5546\u4e3a\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laas$1;->d:Laas;

    invoke-static {v2}, Laas;->a(Laas;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez p3, :cond_1

    .line 116
    iget-object v0, p0, Laas$1;->d:Laas;

    iget-object v1, p0, Laas$1;->a:Landroid/content/Context;

    invoke-static {}, Laap;->a()Laap;

    move-result-object v2

    iget-object v3, p0, Laas$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Laas;->a(Landroid/content/Context;Laat;Ljava/lang/String;Z)V

    .line 118
    iget-object v0, p0, Laas$1;->c:Laas$a;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Laas$1;->c:Laas$a;

    sget-object v1, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-interface {v0, v1}, Laas$a;->onSelected(Lcom/iflytek/yd/system/SimType;)V

    .line 134
    :cond_0
    :goto_0
    iget-object v0, p0, Laas$1;->d:Laas;

    invoke-static {v0}, Laas;->b(Laas;)Lcom/iflytek/viafly/ui/dialog/ListDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->dismiss()V

    .line 135
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 122
    iget-object v0, p0, Laas$1;->d:Laas;

    iget-object v1, p0, Laas$1;->a:Landroid/content/Context;

    invoke-static {}, Laaq;->a()Laaq;

    move-result-object v2

    iget-object v3, p0, Laas$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Laas;->a(Landroid/content/Context;Laat;Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Laas$1;->c:Laas$a;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Laas$1;->c:Laas$a;

    sget-object v1, Lcom/iflytek/yd/system/SimType;->China_Telecom:Lcom/iflytek/yd/system/SimType;

    invoke-interface {v0, v1}, Laas$a;->onSelected(Lcom/iflytek/yd/system/SimType;)V

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 128
    iget-object v0, p0, Laas$1;->d:Laas;

    iget-object v1, p0, Laas$1;->a:Landroid/content/Context;

    invoke-static {}, Laar;->a()Laar;

    move-result-object v2

    iget-object v3, p0, Laas$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Laas;->a(Landroid/content/Context;Laat;Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Laas$1;->c:Laas$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Laas$1;->c:Laas$a;

    sget-object v1, Lcom/iflytek/yd/system/SimType;->China_Unicom:Lcom/iflytek/yd/system/SimType;

    invoke-interface {v0, v1}, Laas$a;->onSelected(Lcom/iflytek/yd/system/SimType;)V

    goto :goto_0
.end method
