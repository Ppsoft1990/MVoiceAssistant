.class public Laiq;
.super Ljava/lang/Object;
.source "VoiceHeadChangeEvent.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Laiq;->a:Landroid/graphics/drawable/Drawable;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Laiq;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
