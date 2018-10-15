.class Lahk$1;
.super Ljava/lang/Object;
.source "HomePluginInstallHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahk;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahk;


# direct methods
.method constructor <init>(Lahk;)V
    .locals 0
    .param p1, "this$0"    # Lahk;

    .prologue
    .line 141
    iput-object p1, p0, Lahk$1;->a:Lahk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    const-string/jumbo v0, "HomePluginInstallHelper"

    const-string/jumbo v1, "\u540c\u610f\u5b89\u88c5-->\u8bf7\u6c42\u5b58\u50a8\u5361\u6743\u9650"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lahk$1;->a:Lahk;

    invoke-static {v0}, Lahk;->a(Lahk;)V

    .line 146
    return-void
.end method
