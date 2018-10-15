.class public Lady;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "layoutId"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lady;->c:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lady;->b:Landroid/view/View;

    .line 21
    iput p3, p0, Lady;->a:I

    .line 22
    iput p4, p0, Lady;->d:I

    .line 23
    iget-object v0, p0, Lady;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lady;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 35
    iput p1, p0, Lady;->a:I

    .line 36
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lady;->b:Landroid/view/View;

    return-object v0
.end method
