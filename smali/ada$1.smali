.class Lada$1;
.super Ljava/util/TimerTask;
.source "WidgetContactCreateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lada;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lada;


# direct methods
.method constructor <init>(Lada;)V
    .locals 0
    .param p1, "this$0"    # Lada;

    .prologue
    .line 187
    iput-object p1, p0, Lada$1;->a:Lada;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 191
    iget-object v1, p0, Lada$1;->a:Lada;

    invoke-static {v1}, Lada;->a(Lada;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 192
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 193
    return-void
.end method
