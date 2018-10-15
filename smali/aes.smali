.class public Laes;
.super Laee;
.source "CommandMessage.java"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Laee;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .param p1, "mContent"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Laes;->a:Landroid/view/View;

    .line 38
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Laes;->a:Landroid/view/View;

    return-object v0
.end method
