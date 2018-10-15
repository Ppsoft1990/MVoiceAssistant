.class Laeb$1;
.super Ljava/lang/Object;
.source "AppResultMessageItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeb;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/app/AppItem;

.field final synthetic b:Laeb;


# direct methods
.method constructor <init>(Laeb;Lcom/iflytek/base/app/AppItem;)V
    .locals 0
    .param p1, "this$0"    # Laeb;

    .prologue
    .line 84
    iput-object p1, p0, Laeb$1;->b:Laeb;

    iput-object p2, p0, Laeb$1;->a:Lcom/iflytek/base/app/AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    const-string/jumbo v0, "AppResultMessageItemDelegate"

    const-string/jumbo v1, "click to open app"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    iget-object v1, p0, Laeb$1;->a:Lcom/iflytek/base/app/AppItem;

    invoke-virtual {v1}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laeb$1;->a:Lcom/iflytek/base/app/AppItem;

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
