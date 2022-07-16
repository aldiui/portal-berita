import React, { useState, useEffect } from 'react';
import Authenticated from '@/Layouts/Authenticated';
import { Link, Head } from '@inertiajs/inertia-react';
import { Inertia } from '@inertiajs/inertia';

export default function Dashboard(props) {
    const [title, setTitle] = useState('');
    const [description, setDescription] = useState('');
    const [category, setCategory] = useState('');
    const [isNotif, setIsNotif] = useState(false);

    const handleSubmit = () => {
        const data = {
            title, description, category
        }
        Inertia.post('/news', data)
        setIsNotif(true)
        setTitle('')
        setDescription('')
        setCategory('')
    }

    useEffect(()=>{
        if(!props.myNews){
            Inertia.get('/news')
        }
        return;
    }, [])

    return (
        <Authenticated
            auth={props.auth}
            errors={props.errors}
            header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Berita Saya</h2>}
        >
            <Head title="Dashboard" />
                <div className="p-4 max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div className="card w-full bg-slate-50 shadow-xl">
                        <div className="card-body">
                            {isNotif && 
                            <div className="alert alert-success shadow-lg m-2">
                                <div>
                                    <svg xmlns="http://www.w3.org/2000/svg" className="stroke-current flex-shrink-0 h-6 w-6" fill="none" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
                                    <span>{props.flash.message}</span>
                                </div>
                            </div>
                            }
                            <input type="text" placeholder="Judul" className="input input-bordered w-full m-2" onChange={(title) => setTitle(title.target.value)} value={title}/>
                            <input type="text" placeholder="Deskripsi" className="input input-bordered w-full m-2" onChange={(description) => setDescription(description.target.value)} value={description}/>
                            <input type="text" placeholder="Kategori" className="input input-bordered w-full m-2" onChange={(category) => setCategory(category.target.value)} value={category}/>
                            <button className="btn btn-success text-white m-2 w-full" onClick={() => handleSubmit()}>SUBMIT</button>
                        </div>
                    </div>
                </div>
                {props.myNews && props.myNews.length > 0 ? props.myNews.map((news, i) =>{
                    return (
                        <div key={i} className='p-4 max-w-7xl mx-auto sm:px-6 lg:px-8'>
                            <div className="card w-full bg-slate-50 shadow-xl">
                                <div className="card-body">
                                    <h2 className="card-title">
                                        {news.title}
                                        <div className="badge badge-secondary">NEW</div>
                                    </h2>
                                    <p>{news.description}</p>
                                    <div className="card-actions justify-end">
                                        <div className="badge badge-inline">
                                            {news.category}
                                        </div>
                                        <div className="badge badge-outline">
                                            <Link href={route('edit.news')} method="get" data={{id: news.id}} as="button">
                                                Edit
                                            </Link>
                                        </div>
                                        <div className="badge badge-outline">
                                            <Link href={route('delete.news')} method="post" data={{id: news.id}} as="button">
                                                Delete
                                            </Link>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    )
                }) : 
                <>
                    <div className='p-4 max-w-7xl mx-auto sm:px-6 lg:px-8'>
                        <div className="card w-full bg-slate-50 shadow-xl">
                            <div className="card-body">
                                <p>Anda belum memiliki berita</p>
                            </div>
                        </div>
                    </div>
                </>
                }
        </Authenticated>
    );
}
