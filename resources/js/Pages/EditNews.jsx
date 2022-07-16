import React, { useState } from "react";
import { Head } from "@inertiajs/inertia-react";
import Navbar from "@/Components/Homepage/Navbar";
import { Inertia } from "@inertiajs/inertia";

export default function EditNews(props) {
    const [title, setTitle] = useState('');
    const [description, setDescription] = useState('');
    const [category, setCategory] = useState('');

    const handleSubmit = () => {
        const data = {
            id:props.myNews.id, title, description, category
        }
        Inertia.post('/news/update', data)
        setTitle('')
        setDescription('')
        setCategory('')
    }
    return (
        <div className="min-h-screen bg-teal-50">
            <Head title={props.title} />
            <Navbar user={props.auth.user} />
            <div className='p-4 max-w-7xl mx-auto sm:px-6 lg:px-8'>
                <div className="card w-full bg-slate-50 shadow-xl">
                    <div className="card-body">
                    <div className="p-2 text-2xl">EDIT BERITA</div>
                    <input type="text" placeholder="Judul" className="input input-bordered w-full m-2" onChange={(title) => setTitle(title.target.value)} defaultValue={props.myNews.title}/>
                    <input type="text" placeholder="Deskripsi" className="input input-bordered w-full m-2" onChange={(description) => setDescription(description.target.value)} defaultValue={props.myNews.description}/>
                    <input type="text" placeholder="Kategori" className="input input-bordered w-full m-2" onChange={(category) => setCategory(category.target.value)} defaultValue={props.myNews.category}/>
                    <button className="btn btn-success text-white m-2 w-full" onClick={() => handleSubmit()}>EDIT</button>
                    </div>
                </div>
            </div>
        </div>
    );
}