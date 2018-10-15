.class Lafg$1;
.super Ljava/lang/Object;
.source "JokeMessageItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafg;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lafg;


# direct methods
.method constructor <init>(Lafg;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lafg;

    .prologue
    .line 56
    iput-object p1, p0, Lafg$1;->c:Lafg;

    iput-object p2, p0, Lafg$1;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lafg$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lafg$1;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lafg$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method
