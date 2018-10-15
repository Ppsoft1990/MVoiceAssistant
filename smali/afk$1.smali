.class Lafk$1;
.super Ljava/lang/Object;
.source "ListenMessageItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafk;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lafk;


# direct methods
.method constructor <init>(Lafk;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lafk;

    .prologue
    .line 74
    iput-object p1, p0, Lafk$1;->d:Lafk;

    iput-object p2, p0, Lafk$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lafk$1;->b:Ljava/lang/String;

    iput p4, p0, Lafk$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lafk$1;->d:Lafk;

    iget-object v1, p0, Lafk$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lafk$1;->b:Ljava/lang/String;

    iget v3, p0, Lafk$1;->c:I

    invoke-static {v0, v1, v2, v3}, Lafk;->a(Lafk;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method
