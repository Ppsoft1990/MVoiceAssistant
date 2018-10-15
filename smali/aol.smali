.class public Laol;
.super Ljava/lang/Object;
.source "ShowLoginDialogEvent.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Laol;->a:Z

    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Laol;->a:Z

    return v0
.end method
