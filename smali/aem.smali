.class public Laem;
.super Laee;
.source "ContactMessage.java"


# instance fields
.field public a:Ladb;


# direct methods
.method public constructor <init>(Ladb;)V
    .locals 0
    .param p1, "contactListView"    # Ladb;

    .prologue
    .line 15
    invoke-direct {p0}, Laee;-><init>()V

    .line 16
    iput-object p1, p0, Laem;->a:Ladb;

    .line 17
    return-void
.end method
